#include "w25q64_f4.h"

void W25Q64_Init (void)
{
	SPI_Initstruct(SPI1,// spi giao tiep
								 SPI1_Pin1,//chan giao tiep spi
								 SPI_Mode_0,
								 SPI_Direction_2Lines_FullDuplex,// full song cong
								 SPI_NSS_Soft,// chip select
								 SPI_DataSize_8b,// kich thuoc data
								 SPI_BaudRatePrescaler_64,// toc do baud
								 SPI_FirstBit_MSB,// bit dau tien
								 SPI_Mode_Master);// che do giao tiep
	
}
uint8_t W25Q64_Exchange (uint8_t Data)
{
	SPI_I2S_SendData  (SPI1,Data);
	while(SPI_I2S_GetFlagStatus  (SPI1, SPI_I2S_FLAG_BSY) == SET);
	return  SPI_I2S_ReceiveData (SPI1);
}
void W25Q64_Erase (uint8_t Erase, uint32_t Address)
{
	//cho phep write xuong W25Q64 
	SPI_CS(ENABLE);
	W25Q64_Exchange(Write_Enable);
	SPI_CS(DISABLE);
	delay_ms(1);
	
	SPI_CS(ENABLE);
	W25Q64_Exchange(Erase);
	W25Q64_Exchange(Address >> 16);
	W25Q64_Exchange(Address >> 8);
	W25Q64_Exchange(Address);
	SPI_CS(DISABLE);
	delay_ms(400);
}
void W25Q64_Page_Write (uint32_t Address, uint8_t *PtrData, uint32_t len)
{
	//cho phep write xuong W25Q64 
	SPI_CS(ENABLE);
	W25Q64_Exchange(Write_Enable);
	SPI_CS(DISABLE);
	delay_ms(1);
	
	SPI_CS(ENABLE);
	W25Q64_Exchange(Page_Program);
	W25Q64_Exchange(Address >> 16);
	W25Q64_Exchange(Address >> 8);
	W25Q64_Exchange(Address);
	for (u16 i = 0; i < len; i++)
	{
		W25Q64_Exchange(PtrData[i]);
	}
	SPI_CS(DISABLE);
	delay_ms(3);
}
void W25Q64_Read (uint32_t Address, uint8_t *PtrData,uint32_t len)
{
	
	SPI_CS(ENABLE);
	W25Q64_Exchange(Read_Data);
	W25Q64_Exchange(Address >> 16);
	W25Q64_Exchange(Address >> 8);
	W25Q64_Exchange(Address);
	for (u16 i = 0; i < len; i++)
	{
		PtrData[i] = W25Q64_Exchange(0x00);
	}
	SPI_CS(DISABLE);
}	
	
	











