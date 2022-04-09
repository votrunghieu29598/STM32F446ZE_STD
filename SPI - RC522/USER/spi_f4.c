#include "spi_f4.h"

void SPI_Initstruct (SPI_TypeDef* SPIx, uint8_t SPI_Pin, SPI_Choose_Mode SPI_Mode, uint8_t  SPI_Dir, uint16_t SPI_NSS, uint8_t SPI_Data_Size, uint8_t SPI_BaudRate,uint8_t SPI_First_Bit, uint16_t SPI_Master_Slave){
	uint8_t pin = SPI_Pin;
	uint8_t mode = SPI_Mode;
	/* ------------------------Setting GPIO_SPI1--------------------------------*/
	if(SPIx == SPI1 && SPI_Pin == pin ){
		if(pin == SPI1_Pin1 ){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOA,ENABLE);
			
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOA, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOA, GPIO_PinSource5, GPIO_AF_SPI1);
			GPIO_PinAFConfig(GPIOA, GPIO_PinSource6, GPIO_AF_SPI1);
			GPIO_PinAFConfig(GPIOA, GPIO_PinSource7, GPIO_AF_SPI1);
		}
		else if(pin == SPI1_Pin2){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB,ENABLE);
			
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOB, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOB, GPIO_PinSource3, GPIO_AF_SPI1);
			GPIO_PinAFConfig(GPIOB, GPIO_PinSource4, GPIO_AF_SPI1);
			GPIO_PinAFConfig(GPIOB, GPIO_PinSource5, GPIO_AF_SPI1);
		}
	/* ------------------------Setting GPIO_SPI2--------------------------------*/
	}else if(SPIx == SPI2 && SPI_Pin == pin ){
		if(pin == SPI2_Pin1 ){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOC,ENABLE);
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB,ENABLE);
			
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3 | GPIO_Pin_2 ;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOC, &GPIO_InitStructure);
			
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10 ;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOB, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOC, GPIO_PinSource3, GPIO_AF_SPI2);
			GPIO_PinAFConfig(GPIOC, GPIO_PinSource2, GPIO_AF_SPI2);
			GPIO_PinAFConfig(GPIOB, GPIO_PinSource10, GPIO_AF_SPI2);
		} else if(pin == SPI2_Pin2 ){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB,ENABLE);
			
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13 | GPIO_Pin_14 | GPIO_Pin_15;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOB, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOB, GPIO_PinSource13, GPIO_AF_SPI2);
			GPIO_PinAFConfig(GPIOB, GPIO_PinSource14, GPIO_AF_SPI2);
			GPIO_PinAFConfig(GPIOB, GPIO_PinSource15, GPIO_AF_SPI2);
		}else if(pin == SPI2_Pin3 ){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOI,ENABLE);
			
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3 | GPIO_Pin_2 | GPIO_Pin_0;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOI, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOI, GPIO_PinSource13, GPIO_AF_SPI2);
			GPIO_PinAFConfig(GPIOI, GPIO_PinSource14, GPIO_AF_SPI2);
			GPIO_PinAFConfig(GPIOI, GPIO_PinSource15, GPIO_AF_SPI2);
		}
	/* ------------------------Setting GPIO_SPI3--------------------------------*/
	}else if(SPIx == SPI3 && SPI_Pin == pin ){
		if(pin == SPI3_Pin1 ){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB,ENABLE);
			
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOB, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOB, GPIO_PinSource3, GPIO_AF_SPI3);
			GPIO_PinAFConfig(GPIOB, GPIO_PinSource4, GPIO_AF_SPI3);
			GPIO_PinAFConfig(GPIOB, GPIO_PinSource5, GPIO_AF_SPI3);
			
		}else if(pin == SPI3_Pin2 ){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOC,ENABLE);
			
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12 | GPIO_Pin_11 | GPIO_Pin_10;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOC, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOC, GPIO_PinSource12, GPIO_AF_SPI3);
			GPIO_PinAFConfig(GPIOC, GPIO_PinSource11, GPIO_AF_SPI3);
			GPIO_PinAFConfig(GPIOC, GPIO_PinSource10, GPIO_AF_SPI3);
		}
	/* ------------------------Setting GPIO_SPI4--------------------------------*/
	}else if(SPIx == SPI4 && SPI_Pin == pin ){
		if(pin == SPI4_Pin1 ){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOE,ENABLE);
			
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_5 | GPIO_Pin_2;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOE, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOE, GPIO_PinSource6, GPIO_AF_SPI4);
			GPIO_PinAFConfig(GPIOE, GPIO_PinSource5, GPIO_AF_SPI4);
			GPIO_PinAFConfig(GPIOE, GPIO_PinSource2, GPIO_AF_SPI4);
			
		}else if(pin == SPI4_Pin2 ){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOE,ENABLE);
			
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14 | GPIO_Pin_13 | GPIO_Pin_12;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOE, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOE, GPIO_PinSource12, GPIO_AF_SPI4);
			GPIO_PinAFConfig(GPIOE, GPIO_PinSource11, GPIO_AF_SPI4);
			GPIO_PinAFConfig(GPIOE, GPIO_PinSource10, GPIO_AF_SPI4);
		}
	/* ------------------------Setting GPIO_SPI5--------------------------------*/
	}else if(SPIx == SPI5 && SPI_Pin == pin ){
		if(pin == SPI5_Pin1 ){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOF,ENABLE);
			
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9 | GPIO_Pin_8 | GPIO_Pin_7;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOF, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOF, GPIO_PinSource6, GPIO_AF_SPI5);
			GPIO_PinAFConfig(GPIOF, GPIO_PinSource5, GPIO_AF_SPI5);
			GPIO_PinAFConfig(GPIOF, GPIO_PinSource2, GPIO_AF_SPI5);
			
		}else if(pin == SPI5_Pin2 ){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOF,ENABLE);
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOH,ENABLE);
			
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11 ;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOF, &GPIO_InitStructure);
			
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_7 | GPIO_Pin_6 ;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOH, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOF, GPIO_PinSource11, GPIO_AF_SPI5);
			GPIO_PinAFConfig(GPIOH, GPIO_PinSource7, GPIO_AF_SPI5);
			GPIO_PinAFConfig(GPIOH, GPIO_PinSource6, GPIO_AF_SPI5);
		}
	/* ------------------------Setting GPIO_SPI6--------------------------------*/
	}else if(SPIx == SPI6 && SPI_Pin == pin ){
		if(pin == SPI6_Pin1 ){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOG, ENABLE);
			GPIO_InitTypeDef GPIO_InitStructure;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14 | GPIO_Pin_12 | GPIO_Pin_13;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
			GPIO_Init(GPIOG, &GPIO_InitStructure);
			
			GPIO_PinAFConfig(GPIOG, GPIO_PinSource6, GPIO_AF_SPI6);
			GPIO_PinAFConfig(GPIOG, GPIO_PinSource5, GPIO_AF_SPI6);
			GPIO_PinAFConfig(GPIOG, GPIO_PinSource2, GPIO_AF_SPI6);
		}
	}
	
	/* ------------------------Setting SPIx--------------------------------*/
	if(SPIx == SPI1){
		RCC_APB2PeriphClockCmd  (RCC_APB2Periph_SPI1, ENABLE);
	}else if(SPIx == SPI4){
		RCC_APB2PeriphClockCmd  (RCC_APB2Periph_SPI4, ENABLE);
	}else if(SPIx == SPI5){
		RCC_APB2PeriphClockCmd  (RCC_APB2Periph_SPI5, ENABLE);
	}else if(SPIx == SPI6){	
		RCC_APB2PeriphClockCmd  (RCC_APB2Periph_SPI6, ENABLE);
	}else if(SPIx == SPI2){
		RCC_APB1PeriphClockCmd  (RCC_APB1Periph_SPI2, ENABLE);
	}else if(SPIx == SPI3){
		RCC_APB1PeriphClockCmd  (RCC_APB1Periph_SPI3, ENABLE);
	}
		SPI_I2S_DeInit(SPIx);
		SPI_InitTypeDef SPI_InitStructure;
		if (mode == SPI_Mode_0){
				SPI_InitStructure.SPI_CPOL = SPI_CPOL_Low;
				SPI_InitStructure.SPI_CPHA = SPI_CPHA_1Edge;
			}else if (mode == SPI_Mode_1){
				SPI_InitStructure.SPI_CPOL = SPI_CPOL_Low;
				SPI_InitStructure.SPI_CPHA = SPI_CPHA_2Edge;
			}
			else if (mode == SPI_Mode_2){
				SPI_InitStructure.SPI_CPOL = SPI_CPOL_High;
				SPI_InitStructure.SPI_CPHA = SPI_CPHA_1Edge;
			}
			else if (mode == SPI_Mode_3){
				SPI_InitStructure.SPI_CPOL = SPI_CPOL_High;
				SPI_InitStructure.SPI_CPHA = SPI_CPHA_2Edge;
			}
		SPI_InitStructure.SPI_Direction = SPI_Dir;
		SPI_InitStructure.SPI_DataSize = SPI_Data_Size;
		SPI_InitStructure.SPI_Mode = SPI_Master_Slave;
		SPI_InitStructure.SPI_NSS = SPI_NSS;
		SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRate;
		SPI_InitStructure.SPI_FirstBit = SPI_First_Bit;
		SPI_InitStructure.SPI_CRCPolynomial = 7;
		SPI_Init  (SPIx, &SPI_InitStructure);
//		SPI_NSSInternalSoftwareConfig  (SPIx,ENABLE);
		SPI_Cmd  (SPIx, ENABLE);
			
	/* ------------------------GPIO_PIN chip select --------------------------------*/
		RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
		RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOA, ENABLE);
			
		GPIO_InitTypeDef GPIO_Initsrtruct;
		GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
		GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
		GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_0;
		GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
		GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
		GPIO_Init (GPIOB, &GPIO_Initsrtruct);
 }
void SPI_CS (FunctionalState newstate){
	if(newstate == ENABLE){
		GPIO_WriteBit(GPIOB,GPIO_Pin_0,Bit_SET);
	}else if(newstate == DISABLE){
		GPIO_WriteBit(GPIOB,GPIO_Pin_0,Bit_RESET);
	}
}
void SPI_Write_Data ( SPI_TypeDef* SPIx, uint8_t data){
	while(!SPI_I2S_GetFlagStatus (SPIx, SPI_I2S_FLAG_TXE));
	SPI_I2S_SendData  (SPIx, data);
}
void SPI_Write_MutiData (SPI_TypeDef* SPIx, uint32_t count, uint8_t *data){
 u32 i = 0;
	while(i < count){
		SPI_Write_Data(SPIx, *data++);
		i++;
	}
	while(!SPI_I2S_GetFlagStatus (SPIx, SPI_I2S_FLAG_TXE));
	while(SPI_I2S_GetFlagStatus (SPIx, SPI_I2S_FLAG_BSY));
	u8 temp = SPI_I2S_ReceiveData  (SPIx);
}
#define SPI_IS_BUSY(SPIx) (((SPIx)->SR & (SPI_SR_TXE | SPI_SR_RXNE)) == 0 || ((SPIx)->SR & SPI_SR_BSY))
uint8_t SPI_Send(SPI_TypeDef* SPIx, uint8_t data) {
	/* Check if SPI is enabled */
//	SPI_CHECK_ENABLED_RESP(SPIx, 0);
	
	/* Wait for previous transmissions to complete if DMA TX enabled for SPI */
//	SPI_WAIT(SPIx);
	while (SPI_IS_BUSY(SPIx));
	/* Fill output buffer with data */
	SPIx->DR = data;
	
	/* Wait for transmission to complete */
//	SPI_WAIT(SPIx);
	while (SPI_IS_BUSY(SPIx));
	/* Return data from buffer */
	return SPIx->DR;
}
uint8_t SPI_Read_Data (SPI_TypeDef* SPIx){
	 uint8_t data;
	while(!SPI_I2S_GetFlagStatus (SPIx, SPI_I2S_FLAG_RXNE));
	data = SPI_I2S_ReceiveData  (SPIx);
	return data;
}

void SPI_Read_MutiData (SPI_TypeDef* SPIx,uint8_t dummy ,uint32_t count, uint8_t *data){
u32 i;
	for (i = 0; i < count; i++) {
		while(SPI_I2S_GetFlagStatus (SPIx, SPI_I2S_FLAG_BSY));
		SPI_Write_Data (SPIx,dummy);
		while(!SPI_I2S_GetFlagStatus (SPIx, SPI_I2S_FLAG_RXNE));
		data[i] = SPI_I2S_ReceiveData  (SPIx);
	}
}
















