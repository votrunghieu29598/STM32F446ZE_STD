#ifndef _I2C_F4_H_
#define _I2C_F4_H_
#include <stdint.h>
#include "stm32f4xx.h"                  // Device header

#define Send 							0									//ack
#define Read 							1									//Nack
#define Master_addr   		0x01

#define I2C1_PinB67				0x67
#define I2C1_PinB89				0x89
#define I2C1_PinB69				0x69
#define I2C2_PinB1011			0xB1
#define I2C2_PinF01				0xF0
#define I2C2_PinF45				0xF4
#define I2C3_PinAB84			0xA4
#define I2C3_PinAC89			0xA9

#define I2C_CLOCK_STANDARD					100000  /*!< I2C Standard speed */
#define I2C_CLOCK_FAST_MODE					400000  /*!< I2C Fast mode speed */
#define I2C_CLOCK_FAST_MODE_PLUS		1000000 /*!< I2C Fast mode plus speed */
#define I2C_CLOCK_HIGH_SPEED				3400000 /*!< I2C High speed */
/**************************************************************/
void I2C_Initstruct (I2C_TypeDef* I2Cx, uint8_t I2C_Pin, uint32_t I2C_Clock );
void I2C_Scan_ADD (I2C_TypeDef* I2Cx,uint8_t add);
void I2C_Start (I2C_TypeDef* I2Cx,FunctionalState  NewState);
void I2C_Stop (I2C_TypeDef* I2Cx,FunctionalState  NewState);
void I2C_Send_ADD (I2C_TypeDef* I2Cx,uint8_t add, uint8_t Direction);
void I2C_Write(I2C_TypeDef* I2Cx,uint8_t data);
void I2C_Write_Data(I2C_TypeDef* I2Cx, uint8_t add, uint8_t reg, uint8_t data);
void I2C_Write_MutiData(I2C_TypeDef* I2Cx, uint8_t add, uint8_t reg,uint8_t len, uint8_t* data);
uint8_t I2C_Read (I2C_TypeDef* I2Cx,uint8_t ack);
uint8_t I2C_Read_Data(I2C_TypeDef* I2Cx, uint8_t add, uint8_t reg);
uint8_t I2C_Read_MutiData(I2C_TypeDef* I2Cx, uint8_t add, uint8_t reg, uint8_t len, uint8_t *data);
uint8_t I2C_Check_Connected (I2C_TypeDef* I2Cx, uint8_t add,char* name);
/**************************************************************/
#endif










