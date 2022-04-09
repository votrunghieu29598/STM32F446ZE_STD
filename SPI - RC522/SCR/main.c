#include "stm32f4xx.h"                  // Device header
#include "delay.h"
#include "usart2.h"
#include "stdio.h"
#include "spi_f4.h"
#include "spi_mfrc522.h"
#include "i2c_f4.h"
#include "i2c_pcf8574.h"
void GPIO_Config (void){
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
	
	GPIO_InitTypeDef GPIO_Initsrtruct;
	GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
	GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_7 | GPIO_Pin_14 ;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init (GPIOB, &GPIO_Initsrtruct);
	
}
uint8_t dataout[20] = "STM32f446" ,spi,a,b,c,d,e,f,g,h,i,datain[20];

int main(){
	GPIO_Config();
	Timer6_Delay();
	USART2_Initstruct();
	PCF8574_Init(I2C1, I2C1_PinB89, I2C_CLOCK_STANDARD);
	I2C_Check_Connected(I2C1, PCF8574_I2C_ADDR1, name_pcf8574);
//	SPI_Initstruct(SPI1,// spi giao tiep
//								 SPI1_Pin1,//chan giao tiep spi
//								 SPI_Mode_0,
//								 SPI_Direction_2Lines_FullDuplex,// full song cong
//								 SPI_NSS_Soft,// chip select
//								 SPI_DataSize_8b,// kich thuoc data
//								 SPI_BaudRatePrescaler_256,// toc do baud
//								 SPI_FirstBit_MSB,// bit dau tien
//								 SPI_Mode_Master);// che do giao tiep
//	SPI_Initstruct(SPI3,// spi giao tiep
//								 SPI3_Pin2,//chan giao tiep spi
//								 SPI_Mode_0,
//								 SPI_Direction_2Lines_FullDuplex,// full song cong
//								 SPI_NSS_Soft,// chip select
//								 SPI_DataSize_8b,// kich thuoc data
//								 SPI_BaudRatePrescaler_256,// toc do baud
//								 SPI_FirstBit_MSB,// bit dau tien
//								 SPI_Mode_Slave);// che do giao tiep
	printf("heloo");
//Recognized card ID
    uint8_t CardID[5];
    //My cards id
    //I read them with program below, and write this here
    uint8_t MyID[5] = {
			0x49, 0xB5 ,0xCD ,0x59 ,0x68 
 //       0x43, 0xdc, 0x52, 0xb6, 0x7b    //My card on my keys
    };
    char buffer[50];
	MFRC522_Init();
	while(1){
		
//	//If any card detected
//        if (MFRC522_Check(CardID) == MI_OK) {
//            //CardID is valid
//            
//            //Check if this is my card
//            if (MFRC522_Compare(CardID, MyID) == MI_OK) {
//             //   TM_ILI9341_Puts(10, 150, "Hello tilz0R!", &TM_Font_11x18, ILI9341_COLOR_GREEN, ILI9341_COLOR_BLACK);
//            } else {
//             //   TM_ILI9341_Puts(10, 150, "Good bye man!", &TM_Font_11x18, ILI9341_COLOR_RED, ILI9341_COLOR_BLACK);
//            }
//            //Print on LCD
//           // TM_ILI9341_Puts(10, 10, "Card detected    ", &TM_Font_11x18, 0x00, 0xFFFF);
//            sprintf(buffer, "0x%02x\n0x%02x\n0x%02x\n0x%02x\n0x%02x", CardID[0], CardID[1], CardID[2], CardID[3], CardID[4]);
//          //  TM_ILI9341_Puts(10, 30, buffer, &TM_Font_11x18, 0x00, 0xFFFF);
//        } else {
//            //Some printing to delete content
//         //   TM_ILI9341_Puts(10, 10, "Card not detected", &TM_Font_11x18, 0x00, 0xFFFF);
//         //   TM_ILI9341_Puts(10, 150, "             ", &TM_Font_11x18, ILI9341_COLOR_GREEN, ILI9341_COLOR_WHITE);
//          //  TM_ILI9341_Puts(10, 30, "    \n    \n    \n    \n    ", &TM_Font_11x18, 0x00, 0xFFFF);
//        }
//    }
		
		CardID[0] = 0, CardID[1]= 0, CardID[2]= 0, CardID[3]= 0, CardID[4]= 0;
		MFRC522_Check(CardID);
//		printf("0x%X 0x%X 0x%X 0x%X 0x%X \n", CardID[0], CardID[1], CardID[2], CardID[3], CardID[4]);		
//		delay_ms(1000);

		 if (MFRC522_Compare(CardID, MyID) == MI_OK) {
			printf("0x%X 0x%X 0x%X 0x%X 0x%X \n", CardID[0], CardID[1], CardID[2], CardID[3], CardID[4]);
			 GPIO_WriteBit(GPIOB,GPIO_Pin_7,Bit_SET);
			 PCF8574_Write(I2C1,PCF8574_I2C_ADDR1,IO_RL_P0);
			 delay_ms(1000);
		 }else{
			 GPIO_WriteBit(GPIOB,GPIO_Pin_7,Bit_RESET);
			 PCF8574_Write(I2C1,PCF8574_I2C_ADDR1,IO_RL_OFF);
		 }
		delay_ms(500);
	}
}


