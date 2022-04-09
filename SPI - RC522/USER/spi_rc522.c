#include "spi_rc522.h"
void RC522_Config (void){
	SPI_Initstruct(SPI_RC522,// spi giao tiep
								 SPI1_Pin1,//chan giao tiep spi
								 SPI_Mode_0,
								 SPI_Direction_2Lines_FullDuplex,// full song cong
								 SPI_NSS_Soft,// chip select
								 SPI_DataSize_8b,// kich thuoc data
								 SPI_BaudRatePrescaler_256,// toc do baud
								 SPI_FirstBit_MSB,// bit dau tien
								 SPI_Mode_Master);// che do giao tiep
	
		RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOA, ENABLE);
		RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
	
		GPIO_InitTypeDef GPIO_Initsrtruct;
		GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
		GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
		GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_4;
		GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
		GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
		GPIO_Init (GPIOA, &GPIO_Initsrtruct);
		GPIO_Init (GPIOB, &GPIO_Initsrtruct);
}
void RC522_Init (void){
	RC522_Config();
	
	
}
void RCC522_CS (FunctionalState newstate){
	if(newstate == DISABLE){
		GPIO_WriteBit(GPIOA,GPIO_Pin_4,Bit_SET);
	}else if(newstate == ENABLE){
		GPIO_WriteBit(GPIOA,GPIO_Pin_4,Bit_RESET);
	}	
}
void RFID_write(unsigned char reg, unsigned char data){ 
	RCC522_CS(ENABLE);
	SPI_Send(SPI_RC522,(reg<<1)&0x7E);
	SPI_Send(SPI_RC522,data); 
	RCC522_CS(DISABLE);
}
unsigned char RFID_read(unsigned char reg){
	unsigned char data; 
	RCC522_CS(ENABLE);
	SPI_Send(SPI_RC522,((reg<<1)&0x7E)|0x80);
	data = SPI_Send(SPI_RC522,0x00); 
	RCC522_CS(DISABLE);
	return data;
} 

void SetBitMask(unsigned char reg,unsigned char mask){
	unsigned char tmp = 0x0;
	tmp = RFID_read(reg);
	RFID_write(reg,tmp | mask);  
}
void ClearBitMask(unsigned char reg,unsigned char mask){
	unsigned char tmp = 0x0;
	tmp = RFID_read(reg);
	RFID_write(reg, tmp & ~mask);  
} 
void MFRC522_AntennaOn(void){
	unsigned char i;
	i = RFID_read(0x14);
	if (!(i & 0x03)){
			SetBitMask(0x14, 0x03);
		}
}
void MFRC522_AntennaOff(void){
	ClearBitMask(0x14, 0x03);
}  

