#include "pwm_f4.h"
void Timer_PWM(TIM_TypeDef* TIMx,
								uint8_t Tim_ClockDivision,
								uint8_t Tim_couter_mode,
								uint16_t Tim_Period,
								uint8_t Tim_Prescaler)
{
	TIM_TimeBaseInitTypeDef TimerPwm_init;
	TIM_DeInit(TIMx);
	//bat clock rcc timer bus APB2
	if(TIMx == TIM1){RCC -> APB2ENR |= (1 << 0);}
	else if(TIMx == TIM8){RCC -> APB2ENR |= (1 << 1);}	
	else if(TIMx == TIM9){RCC -> APB2ENR |= (1 << 16);}
	else if(TIMx == TIM10){RCC -> APB2ENR |= (1 << 17);}
	else if(TIMx == TIM11){RCC -> APB2ENR |= (1 << 18);}
	//bat clock rcc timer bus APB1
	else if(TIMx == TIM2){RCC -> APB1ENR |= (1 << 0);}
	else if(TIMx == TIM3){RCC -> APB1ENR |= (1 << 1);}	
	else if(TIMx == TIM4){RCC -> APB1ENR |= (1 << 2);}	
	else if(TIMx == TIM5){RCC -> APB1ENR |= (1 << 3);}
	else if(TIMx == TIM12){RCC -> APB1ENR |= (1 << 6);}	
	else if(TIMx == TIM13){RCC -> APB1ENR |= (1 << 7);}	
	else if(TIMx == TIM14){RCC -> APB1ENR |= (1 << 8);}	
	
	TimerPwm_init.TIM_ClockDivision = Tim_ClockDivision;
	TimerPwm_init.TIM_CounterMode = Tim_couter_mode;
	/*
	tan so cap cho timer 
	vd timer 4 tan so bus APBH 1 la 90 MHZ
	timer_tick_frequency = Timer_default_frequency / (prescaller_set + 1)  
	timer_tick_frequency = 90000000 / (0 + 1) = 90000000 
	*/ 
	TimerPwm_init.TIM_Prescaler = Tim_Prescaler - 1;
	/*
	tan so cap cho PWM:
	
	PWM_frequency = timer_tick_frequency / (TIM_Period + 1)
	
  TIM_Period = timer_tick_frequency / PWM_frequency - 1
	10Khz PWM_frequency:
  TIM_Period = 90000000 / 10000 - 1 = 8399
	*/
	TimerPwm_init.TIM_Period = Tim_Period - 1 ;
	TimerPwm_init.TIM_RepetitionCounter = 0;
	TIM_TimeBaseInit  (TIMx, &TimerPwm_init);
//	TIM_ARRPreloadConfig  (TIMx,ENABLE);
//	TIM_CtrlPWMOutputs  (TIMx,ENABLE);
	
	TIM_Cmd(TIMx, ENABLE);
}
void GPIO_PWM(GPIO_TypeDef* GPIOx, uint16_t GPIO_PinSourceX, uint16_t GPIO_AF_TIMX, uint16_t GPIO_PinX)
{
	GPIO_InitTypeDef GPIO_InitStruct;

	// bat rcc
	if(GPIOx == GPIOA){RCC -> AHB1ENR |= (1 << 0);}
	else if(GPIOx == GPIOB){RCC -> AHB1ENR |= (1 << 1);}	
	else if(GPIOx == GPIOC){RCC -> AHB1ENR |= (1 << 2);}
	else if(GPIOx == GPIOD){RCC -> AHB1ENR |= (1 << 3);}
	else if(GPIOx == GPIOE){RCC -> AHB1ENR |= (1 << 4);}
	else if(GPIOx == GPIOF){RCC -> AHB1ENR |= (1 << 5);}
	else if(GPIOx == GPIOG){RCC -> AHB1ENR |= (1 << 6);}	
	else if(GPIOx == GPIOH){RCC -> AHB1ENR |= (1 << 7);}
	//lien ket chan
	GPIO_PinAFConfig(GPIOx, GPIO_PinSourceX, GPIO_AF_TIMX);
	// cau hinh gpio
	GPIO_InitStruct.GPIO_Pin = GPIO_PinX;
	GPIO_InitStruct.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_2MHz;
	GPIO_Init(GPIOx, &GPIO_InitStruct);
}
void PWM_Chanel(TIM_TypeDef* TIMx, 
								uint8_t Tim_OCMode,
								uint8_t Tim_OCPolarity,
								uint16_t Tim_Pulse,
								uint8_t Pwm_chanel)
{
	
	TIM_OCInitTypeDef TIM_OCStruct;
	
	TIM_OCStruct.TIM_OCMode = Tim_OCMode;
	TIM_OCStruct.TIM_OCPolarity = Tim_OCPolarity;
	TIM_OCStruct.TIM_OutputState = TIM_OutputState_Enable;
	if(Pwm_chanel == TIM_Channel_1)
	{
		TIM_OCStruct.TIM_Pulse = Tim_Pulse;
		TIM_OC1Init(TIMx, &TIM_OCStruct);
		TIM_OC1PreloadConfig(TIMx, TIM_OCPreload_Enable);
	}
	else if(Pwm_chanel == TIM_Channel_2)
	{
		TIM_OCStruct.TIM_Pulse = Tim_Pulse;
		TIM_OC2Init(TIMx, &TIM_OCStruct);
		TIM_OC2PreloadConfig(TIMx, TIM_OCPreload_Enable);
	}
	else if(Pwm_chanel == TIM_Channel_3)
	{
		TIM_OCStruct.TIM_Pulse = Tim_Pulse;
		TIM_OC3Init(TIMx, &TIM_OCStruct);
		TIM_OC3PreloadConfig(TIMx, TIM_OCPreload_Enable);
	}
	else if(Pwm_chanel == TIM_Channel_4)
	{
		TIM_OCStruct.TIM_Pulse = Tim_Pulse;
		TIM_OC4Init(TIMx, &TIM_OCStruct);
		TIM_OC4PreloadConfig(TIMx, TIM_OCPreload_Enable);
	}
}












