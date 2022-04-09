#ifndef _SPI_F4_H_
#define _SPI_F4_H_
#include <stdint.h>
#include "stm32f4xx.h"                  // Device header
#include "stm32f4xx_gpio.h"
#include "delay.h"

#define SPI1_Pin1       		 	0xA1			//PA7    PA6     PA5 
#define SPI1_Pin2      				0xA2		  //PB5    PB4     PB3 

#define SPI2_Pin1       			0xA3      //PC3    PC2     PB10 
#define SPI2_Pin2      				0xA4      //PB15   PB14    PB13  
#define SPI2_Pin3       			0xA5      //PI3    PI2     PI0

#define SPI3_Pin1      				0xA6      //PB5    PB4     PB3
#define SPI3_Pin2      				0xA7      //PC12   PC11    PC10 

#define SPI4_Pin1     				0xB0      //PE6    PE5     PE2 
#define SPI4_Pin2       			0xB1      //PE14   PE13    PE12 

#define SPI5_Pin1      				0xB2     	//PF9    PF8     PF7 
#define SPI5_Pin2     				0xB3      //PF11   PH7     PH6 

#define SPI6_Pin1     				0xB4    	//PG14   PG12    PG13 

typedef enum {
	SPI_Mode_0, /*!< Clock polarity low, clock phase 1st edge */
	SPI_Mode_1, /*!< Clock polarity low, clock phase 2nd edge */
	SPI_Mode_2, /*!< Clock polarity high, clock phase 1st edge */
	SPI_Mode_3  /*!< Clock polarity high, clock phase 2nd edge */
} SPI_Choose_Mode;
/**************************************************************/
void SPI_Initstruct (SPI_TypeDef* SPIx, uint8_t SPI_Pin, SPI_Choose_Mode SPI_Mode, uint8_t  SPI_Dir, uint16_t SPI_NSS, uint8_t SPI_Data_Size, uint8_t SPI_BaudRate,uint8_t SPI_First_Bit, uint16_t SPI_Master_Slave);
void SPI_CS (FunctionalState newstate);
void SPI_Write_Data(SPI_TypeDef* SPIx,uint8_t data);
void SPI_Write_MutiData (SPI_TypeDef* SPIx, uint32_t count, uint8_t *data);
uint8_t SPI_Read_Data (SPI_TypeDef* SPIx);
void SPI_Read_MutiData (SPI_TypeDef* SPIx,uint8_t dummy ,uint32_t count, uint8_t *data);
uint8_t SPI_Send(SPI_TypeDef* SPIx, uint8_t data);
/**************************************************************/
#endif
