#ifndef _I2C_H_
#define _I2C_H_
#include <stdint.h>
#include "stm32f4xx.h"                  // Device header
#define SCL_Pin 			GPIO_Pin_8
#define SDA_Pin 			GPIO_Pin_9
#define I2C_X					I2C1
#define Send 					0									//ack
#define Read 					1									//Nack

/**************************************************************/
void I2C_Config (void);
void I2C_Start (void);
void I2C_Stop (void);
void I2C_Send_ADD (uint8_t add, uint8_t Direction);
void I2C_Write(uint8_t data);
void I2C_Write_Data(uint8_t add, uint8_t reg, uint8_t data);
void I2C_Scan_ADD (void);
void I2C_Write_MutiData(uint8_t add, uint8_t reg,uint8_t len,uint8_t* data);
uint8_t I2C_Read(uint8_t ack);
uint8_t I2C_Read_Data(uint8_t add, uint8_t reg);
uint8_t I2C_Read_MutiData(uint8_t add, uint8_t reg, uint8_t len, uint8_t *data);
/**************************************************************/
#endif





