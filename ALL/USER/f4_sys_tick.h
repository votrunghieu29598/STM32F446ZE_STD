#ifndef _F4_SYS_TICK_H_
#define _F4_SYS_TICK_H_
#include "stm32f4xx.h"                  // Device header
#include <stdint.h>

typedef enum
{
	tick1us = 1000000,
	tick10us = 100000,
	tick1ms = 1000,	
}sysTick
;
/**************************************************************/
void SYSTICK_Config(sysTick tick);

//timer 6
void Timer6_Delay (void);
void delay_us (double delayus);
void delay_ms (double delayms);
void Delaysys_ms(uint32_t Time);
/**************************************************************/
#endif






