#include "stm32f4xx_it.h"
#include "stm32f4xx_syscfg.h"
#include "f4_sys_tick.h"
#include "misc.h"
static __IO uint32_t TimingDelay;

//timer 6
void Timer6_Delay (void){
	RCC_APB1PeriphClockCmd  (RCC_APB1Periph_TIM6, ENABLE);
	TIM_TimeBaseInitTypeDef Timer6_initstruct;
	
	Timer6_initstruct.TIM_Prescaler = 90 -1;
	Timer6_initstruct.TIM_Period = 0xFFFF;
	TIM_TimeBaseInit  ( TIM6, &Timer6_initstruct);
	TIM_Cmd  (TIM6, ENABLE);
}
void delay_us (double delayus){
	TIM_SetCounter  ( TIM6,0);
	while(TIM_GetCounter  (TIM6) < delayus);
}
void delay_ms (double delayms){
	for(int i = 0 ; i < delayms; i++){
		delay_us(1000);
	}
}
void SYSTICK_Config(sysTick tick)
{
	Timer6_Delay();
	SysTick_Config(SystemCoreClock/tick);	
}
void SysTick_Handler(void)
{
  TimingDelay--;
}

void Delaysys_ms(uint32_t Time)
{
	TimingDelay = Time;// tick1ms
	//	TimingDelay = Time*100;// tick10us
	//	TimingDelay = Time*1000;// tick1us
	while(TimingDelay != 0);
}


