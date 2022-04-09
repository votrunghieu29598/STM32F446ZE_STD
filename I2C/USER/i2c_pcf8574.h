#ifndef _I2C_PCF8574_H_
#define _I2C_PCF8574_H_
#include <stdint.h>
#include "stm32f4xx.h"                  // Device header
#include "delay.h"
#include "stdio.h"
#include "i2c.h"
#include "usart2.h"

#define name_pcf8574		"PCF8574"

#define PCF8574_ADD1    0x40
#define PCF8574_ADD2    0x48
#define IO_P7         	0x80
#define IO_P6         	0x40
#define IO_P5         	0x20
#define IO_P4         	0x10
#define IO_P3         	0x08
#define IO_P2        	 	0x04
#define IO_P1         	0x02
#define IO_P0        		0x01
#define IO_Off       		0x00
#define IO_ALL        	0xFF
/**************************************************************/
void I2C_PCF8574 (uint8_t add);
void I2C_PCF8574_Write(uint8_t add,uint8_t IO);
uint8_t I2C_Read_PCF8574 (uint8_t add, uint8_t reg);
/**************************************************************/
#endif








