#include "stm32f4xx.h"                  // Device header
#include "delay.h"
#include "stdio.h"
#include "i2c.h"
#include "usart2.h"
#include "i2c_pcf8574.h"
#include "i2c_ds1307.h"
void GPIO_Config (void){
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
	
	GPIO_InitTypeDef GPIO_Initsrtruct;
	GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
	GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_7 | GPIO_Pin_14  ;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init (GPIOB, &GPIO_Initsrtruct);
	GPIO_WriteBit(GPIOB, GPIO_Pin_0, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_7, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_14, Bit_SET);
}
//u8 add,data;//80 40 20 10 8 4 2 1
u8 add,i[8],temp;
u8 gio=0,phut=0,giay=0,thu=0,ngay=0,thang=0,nam=0;
uint8_t data[7];

int main(){
	GPIO_Config();
	Timer6_Delay();
	USART2_Initstruct();
	//Set_up i2c
	I2C_Initstruct();
//	I2C_Check_Connected(PCF8574_ADD1,name_pcf8574);
	
//	I2C_Check_Connected(PCF8574_ADD2,name_pcf8574);
//	I2C_Check_Connected(DS1307_I2C_ADDR,name_ds1307);
//	RTC_SetDateTime(12,56,00,0,2,1,22);
	while(1){
		I2C_Scan_ADD(I2C1,add);
		delay_ms(1000);
//		if(!I2C_Read_PCF8574(PCF8574_ADD2,IO_P7)){
//				I2C_PCF8574_Write(PCF8574_ADD1,IO_P1);
//				delay_ms(100);
//				I2C_PCF8574_Write(PCF8574_ADD1,IO_P7);
//				delay_ms(100);
//				I2C_PCF8574_Write(PCF8574_ADD1,IO_Off);
//		}
//	I2C_PCF8574_Write(PCF8574_ADD1,IO_P0);
//	delay_ms(100);
//	I2C_PCF8574_Write(PCF8574_ADD1,IO_P1);
//	delay_ms(100);
//	I2C_PCF8574_Write(PCF8574_ADD1,IO_P2);
//	delay_ms(100);
//	I2C_PCF8574_Write(PCF8574_ADD1,IO_P3);
//	delay_ms(100);
//	I2C_PCF8574_Write(PCF8574_ADD1,IO_P4);
//	delay_ms(100);
//	I2C_PCF8574_Write(PCF8574_ADD1,IO_P5);
//	delay_ms(100);
//	I2C_PCF8574_Write(PCF8574_ADD1,IO_P6);
//	delay_ms(100);
//	I2C_PCF8574_Write(PCF8574_ADD1,IO_P7);
//	delay_ms(100);
//	I2C_PCF8574_Write(PCF8574_ADD1,IO_Off);
//	delay_ms(500);	
//	I2C_PCF8574_Write(PCF8574_ADD1,IO_ALL);
//	delay_ms(500);	

//		RTC_GetDateTime(&gio,&phut,&giay,&thu,&ngay,&thang,&nam);
//		
//		printf("%d-%d-%d \t %d %d/%d/%d \r\n",gio,phut,giay,thu,ngay,thang,nam);
//		delay_ms(500);
	}
}


