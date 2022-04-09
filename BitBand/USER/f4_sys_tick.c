#include "stm32f4xx_it.h"
#include "stm32f4xx_syscfg.h"
#include "f4_sys_tick.h"
#include "misc.h"
static __IO uint32_t TimingDelay;

/* Private function prototypes -----------------------------------------------*/
//static void Delay(__IO uint32_t nTime);

void SysTick_Configuration(void)
{ 
  /* Setup SysTick Timer for 1 msec interrupts */
  if (SysTick_Config(SystemCoreClock / 1000)) //1000000:us 1000:ms
  { 
  /* Capture error */
  NVIC_SystemReset();
 }
	NVIC_InitTypeDef NVIC_InitStruct;
	NVIC_InitStruct.NVIC_IRQChannel = SysTick_IRQn;
	NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
	NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0;
	NVIC_Init(&NVIC_InitStruct);
}
void TimingDelay_Decrement(void) 
{
  if (TimingDelay != 0)
  { 
    TimingDelay--;
  }
}
void SysTick_Handler(void)
{
  TimingDelay_Decrement();
}
void Delay_Sys_us (__IO uint32_t nTime)//delay ngan nhat tu 10 us tro len
{ 
  TimingDelay = nTime;
  while(TimingDelay != 0);
}
void Delay_Sys_ms (uint32_t ms){
	
	Delay_Sys_us (ms*100);
}

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





