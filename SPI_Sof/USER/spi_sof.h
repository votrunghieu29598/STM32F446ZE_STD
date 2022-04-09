#ifndef _SPI_SOF_H_
#define _SPI_SOF_H_
#include <stdint.h>
#include "stm32f4xx.h" 
//pin
#define SCLK_Pin 							GPIO_Pin_5
#define MISO_Pin 							GPIO_Pin_6
#define MOSI_Pin 							GPIO_Pin_7
#define SS_Pin 								GPIO_Pin_4
//clock
#define	SPI_SCLK_0						GPIO_WriteBit(GPIOA, SCLK_Pin, Bit_RESET)
#define	SPI_SCLK_1						GPIO_WriteBit(GPIOA, SCLK_Pin, Bit_SET)
//MISO
#define	SPI_MISO_0						GPIO_WriteBit(GPIOA, MISO_Pin, Bit_RESET)
#define	SPI_MISO_1						GPIO_WriteBit(GPIOA, MISO_Pin, Bit_SET)
//MOSI
#define	SPI_MOSI_0						GPIO_WriteBit(GPIOA, MOSI_Pin, Bit_RESET)
#define	SPI_MOSI_1						GPIO_WriteBit(GPIOA, MOSI_Pin, Bit_SET)
//CS
#define	SPI_SS_0							GPIO_WriteBit(GPIOA, SS_Pin, Bit_RESET)
#define	SPI_SS_1							GPIO_WriteBit(GPIOA, SS_Pin, Bit_SET)
//Read MISO; MOSI
#define SPI_Read_MISO					GPIO_ReadInputDataBit(GPIOA, MISO_Pin)
#define SPI_Read_MOSI					GPIO_ReadInputDataBit(GPIOA, MOSI_Pin)
/**************************************************************/
void SPI_Initstruct (void);
void SPI_Write (uint8_t byte);
uint8_t SPI_Read (void);
void SPI_Write_Data (uint8_t data);
void SPI_Write_MutiData (uint8_t len, uint8_t *data);
uint8_t SPI_Read_Data (void);
/**************************************************************/
#endif