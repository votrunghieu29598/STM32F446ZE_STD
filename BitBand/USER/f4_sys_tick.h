#ifndef _F4_SYS_TICK_H_
#define _F4_SYS_TICK_H_
#include "stm32f4xx.h"                  // Device header
#include <stdint.h>
/**************************************************************/
void SysTick_Configuration(void);
void Delay_Sys_us (__IO uint32_t nTime);
void Delay_Sys_ms (uint32_t ms);
void TimingDelay_Decrement(void);
void SysTick_Handler(void);
//timer 6
void Timer6_Delay (void);
void delay_us (double delayus);
void delay_ms (double delayms);
/**************************************************************/
#endif






