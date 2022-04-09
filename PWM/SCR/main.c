#include "stm32f4xx.h"                  // Device header
//#include "delay.h"
#include "stdio.h"
#include "string.h"
#include "usart_f4.h"
#include "misc.h"
#include "f4_sys_tick.h"
#include "i2c_f4.h"
#include "i2c_pcf8574.h"
#include "pwm_f4.h"
void GPIO_Config (void){
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
	
	GPIO_InitTypeDef GPIO_Initsrtruct;
	GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
//	GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_7 | GPIO_Pin_14 ;
	GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_15 | GPIO_Pin_13 ;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init (GPIOB, &GPIO_Initsrtruct);
	
}

int main(){
	GPIO_Config();
	Timer6_Delay();
	SysTick_Configuration();
	USART_Initstruct(USART2,
									 USART2_Pin2,
									 USART_Buadrate_9600, 
								 	 USART_HardwareFlowControl_None,
								 	 USART_Mode_Rx | USART_Mode_Tx, 
									 USART_Parity_No,
									 USART_StopBits_1,
									 USART_WordLength_8b);
//	PCF8574_Init(I2C1, I2C1_PinB89, I2C_CLOCK_STANDARD);
//	I2C_Check_Connected(I2C1, PCF8574_I2C_ADDR1,name_pcf8574);
	// cau hinh timer 3 chanel 3
	Timer_PWM(TIM3, TIM_CKD_DIV1, TIM_CounterMode_Up, 1000, 90);
	GPIO_PWM(GPIOB, GPIO_PinSource0, GPIO_AF_TIM3, GPIO_Pin_0);
	PWM_Chanel(TIM3, TIM_OCMode_PWM1, TIM_OCPolarity_High, 0, TIM_Channel_3);
	// cau hinh timer 4 chanel 2
	Timer_PWM(TIM4, TIM_CKD_DIV1, TIM_CounterMode_Up, 1000, 90);
	GPIO_PWM(GPIOB, GPIO_PinSource7, GPIO_AF_TIM4, GPIO_Pin_7);
	PWM_Chanel(TIM4, TIM_OCMode_PWM1, TIM_OCPolarity_High, 0, TIM_Channel_2);
	// cau hinh timer 12 chanel 1
	Timer_PWM(TIM12, TIM_CKD_DIV1, TIM_CounterMode_Up, 1000, 90);
	GPIO_PWM(GPIOB, GPIO_PinSource14, GPIO_AF_TIM12, GPIO_Pin_14);
	PWM_Chanel(TIM12, TIM_OCMode_PWM2, TIM_OCPolarity_High, 0 , TIM_Channel_1);
//		Timer_PWM(TIM4, TIM_CKD_DIV1, TIM_CounterMode_Up, 100, 90);
//		GPIO_PWM(GPIOD, GPIO_PinSource14, GPIO_AF_TIM4, GPIO_Pin_14);
//		PWM_Chanel(TIM4, TIM_OCMode_PWM1, TIM_OCPolarity_High, 0, TIM_Channel_3);
	
	while(1){
//	printf("STM32F446ZET6U \n");	
//	delay_ms(1000);
//		GPIO_SetBits(GPIOB, GPIO_Pin_13);
//		GPIO_ResetBits(GPIOB, GPIO_Pin_15);
//		TIM_SetCompare3(TIM4,99);
//		delay_ms(2000);
//		TIM_SetCompare3(TIM4,50);
//		delay_ms(2000);
		for (u32 i = 0; i <= 1000; i++)
		{
			delay_ms(2);
			TIM_SetCompare3(TIM3,i);
			TIM_SetCompare2(TIM4,i);
			TIM_SetCompare1(TIM12,i);
		
		}
		for (u32 i = 1000; i > 0; i--)
		{
			delay_ms(2);
			TIM_SetCompare3(TIM3,i);
			TIM_SetCompare2(TIM4,i);
			TIM_SetCompare1(TIM12,i);
		}
	}
}
