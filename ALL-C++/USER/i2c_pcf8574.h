#ifndef _I2C_PCF8574_H_
#define _I2C_PCF8574_H_
#include <stdint.h>
#include "stm32f4xx.h"                  // Device header
#include "f4_sys_tick.h"
#include "i2c_f4.h"
#include "usart_f4.h"

#define name_pcf8574		"PCF8574"

#define PCF8574_I2C_ADDR1    	0x40
#define PCF8574_I2C_ADDR2    	0x48
#define IO_P7         				0x80
#define IO_P6         				0x40
#define IO_P5         				0x20
#define IO_P4         				0x10
#define IO_P3         				0x08
#define IO_P2        	 				0x04
#define IO_P1         				0x02
#define IO_P0        					0x01
#define IO_Off       					0x00
#define IO_ALL        				0xFF

#define IO_RL_P7         			0x7F
#define IO_RL_P6         			0xBF
#define IO_RL_P5         			0xDF
#define IO_RL_P4         			0xEF
#define IO_RL_P3         			0xF7
#define IO_RL_P2         			0xFB
#define IO_RL_P1         			0xFD
#define IO_RL_P0         			0xFE
#define IO_RL_OFF         		0xFF
#define IO_RL_ALL          		0x00
/**************************************************************/
void PCF8574_Init (I2C_TypeDef* I2Cx, uint8_t PCF8574_pin, uint32_t I2C_Clock);
void PCF8574_Write(I2C_TypeDef* I2Cx, uint8_t add,uint8_t IO);
uint8_t PCF8574_Read (I2C_TypeDef* I2Cx, uint8_t add, uint8_t reg);
/**************************************************************/
#endif








