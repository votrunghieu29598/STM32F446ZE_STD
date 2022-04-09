#ifndef 	_PWM_F5_H_
#define   _PWM_F5_H_
#include "stm32f4xx.h"                  // Device header

/*******************************************************************/
void Timer_PWM (TIM_TypeDef* TIMx, uint8_t Tim_ClockDivision, uint8_t Tim_couter_mode, uint16_t Tim_Period, uint8_t Tim_Prescaler);
void GPIO_PWM (GPIO_TypeDef* GPIOx, uint16_t GPIO_PinSourceX, uint16_t GPIO_AF_TIMX, uint16_t GPIO_PinX);
void PWM_Chanel(TIM_TypeDef* TIMx, uint8_t Tim_OCMode, uint8_t Tim_OCPolarity, uint16_t Tim_Pulse, uint8_t Pwm_chanel);
/*******************************************************************/
#endif














