#ifndef _GPIO_F4_H_
#define _GPIO_F4_H_
#include "stm32f4xx.h"                  // Device header
#include "stdint.h" 
#include "stm32f4xx_gpio.h"


void GPIO_Config (GPIO_TypeDef* GPIOx,
									uint16_t GPIO_PIN_X,
									GPIOMode_TypeDef GPIO_MODE,
									GPIOOType_TypeDef GPIO_OTYPE,
									GPIOPuPd_TypeDef GPIO_PUPD,
								  GPIOSpeed_TypeDef GPIO_SPEED);


#endif










