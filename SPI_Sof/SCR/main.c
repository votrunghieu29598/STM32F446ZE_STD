#include "stm32f4xx.h"                  // Device header
#include "delay.h"
#include "stdio.h"
#include "usart2.h"
#include "spi_sof.h"
void GPIO_Config (void){
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
	
	GPIO_InitTypeDef GPIO_Initsrtruct;
	GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
	GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_7 | GPIO_Pin_14 ;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init (GPIOB, &GPIO_Initsrtruct);
	
	GPIO_WriteBit(GPIOB, GPIO_Pin_0, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_7, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_14, Bit_SET);
	
}
u8 data;
int main(){
	GPIO_Config();
	Timer6_Delay();
	USART2_Initstruct();
	SPI_Initstruct();
	while(1){
//		u8 data[4];
//		data[0] = 0x06;
//		data[1] = 0x82;
//		data[2] = 0x93;
//		SPI_Write_MutiData(3,data);
		SPI_Write_Data(0x12);
		delay_ms(100);
//		data = SPI_Read_Data();
//		delay_ms(500);
	}
}


