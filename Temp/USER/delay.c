#include "delay.h"
#include "stm32f4xx.h"                  // Device header
void Timer6_Delay (void){
	RCC_APB1PeriphClockCmd  (RCC_APB1Periph_TIM6, ENABLE);
	TIM_TimeBaseInitTypeDef Timer6_initstruct;
	
	Timer6_initstruct.TIM_Prescaler = 84 -1;
	Timer6_initstruct.TIM_Period = 0xFFFF;
	TIM_TimeBaseInit  ( TIM6, &Timer6_initstruct);
	TIM_Cmd  (TIM6, ENABLE);
}
void delay_us (unsigned int delayus){
	TIM_SetCounter  ( TIM6,0);
	while(TIM_GetCounter  (TIM6) < delayus);
}
void delay_ms (unsigned int delayms){
	for(int i = 0 ; i < delayms; i++){
		delay_us(1000);
	}
}



