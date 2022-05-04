#ifndef _I2C_PCF8574_H_
#define _I2C_PCF8574_H_
#include <stdint.h>
#include "stm32f4xx.h"                  // Device header
#include "f4_sys_tick.h"
#include "i2c_f4.h"
#include "usart_f4.h"
#include "i2c_f4.h"
#define name_pcf8574		"PCF8574"

#define PCF8574_I2C_ADDR1    	0x40
#define PCF8574_I2C_ADDR2    	0x48
typedef enum {
 IO_P7 = 0x80,
 IO_P6 = 0x40,
 IO_P5 = 0x20,
 IO_P4 = 0x10,
 IO_P3 = 0x08,
 IO_P2 = 0x04,
 IO_P1 = 0x02,
 IO_P0 = 0x01,
 IO_Off = 0x00,
 IO_ALL = 0xFF,

 IO_RL_P7 = 0x7F,
 IO_RL_P6 = 0xBF,
 IO_RL_P5 = 0xDF,
 IO_RL_P4 = 0xEF,
 IO_RL_P3 = 0xF7,
 IO_RL_P2 = 0xFB,
 IO_RL_P1 = 0xFD,
 IO_RL_P0 = 0xFE,
 IO_RL_OFF = 0xFF,
 IO_RL_ALL = 0x00,
}PCF8574_PinIOtypedef;
/**************************************************************/
void PCF8574_Init (I2C_TypeDef* I2Cx, I2C_Pintypedef PCF8574_pin, I2C_Clocktypedef I2C_Clock);
void PCF8574_Write(I2C_TypeDef* I2Cx, uint8_t add,PCF8574_PinIOtypedef IO);
uint8_t PCF8574_Read (I2C_TypeDef* I2Cx, uint8_t add, uint8_t reg);
/**************************************************************/
#endif








