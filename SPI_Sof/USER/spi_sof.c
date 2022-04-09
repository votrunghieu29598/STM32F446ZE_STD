#include "stm32f4xx.h"                  // Device header
#include "spi_sof.h"
#include "delay.h"
void SPI_Initstruct (void){
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOA, ENABLE);
	
	GPIO_InitTypeDef GPIO_Initsrtruct;
	GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
	GPIO_Initsrtruct.GPIO_Pin = SCLK_Pin | MISO_Pin | MOSI_Pin | SS_Pin;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init (GPIOA, &GPIO_Initsrtruct);
	
	SPI_SS_1;
	SPI_SCLK_0;
	SPI_MISO_1;
}
void SPI_Write (uint8_t byte){
	for (u8 i = 0; i < 8; i++){
			if((byte &0x80) != 0 ){
				SPI_MOSI_1;
			}else{
				SPI_MOSI_0;
			}
			SPI_SCLK_1;
			delay_us(1);
			SPI_SCLK_0;
			delay_us(1);
			byte <<= 1;
	}
}
uint8_t SPI_Read (void){
	u8 i,byte;
	for (i = 0; i < 8; i ++){
		byte <<=1;
		SPI_SCLK_1;
		if(SPI_Read_MISO){
			byte |= 0x01;
			SPI_SCLK_0;
		}
	}
	return byte;
}
void SPI_Write_Data (uint8_t data){
		SPI_SS_1;
		delay_us(1);
		SPI_SS_0;
		delay_us(1);
		SPI_Write(data);
		SPI_SS_1;
	
}
void SPI_Write_MutiData (uint8_t len, uint8_t *data){
		SPI_SS_1;
		delay_us(1);
		SPI_SS_0;
		delay_us(1);
		while(len--){
			SPI_Write(*data++);
		}
		SPI_SS_1;
}
uint8_t SPI_Read_Data (void){
		u8 data;
		SPI_SS_1;
		delay_us(1);
		SPI_SS_0;
		delay_us(1);
		data = SPI_Read();
		SPI_SS_1;
		return data;
}