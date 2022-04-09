#include "stm32f4xx.h"                  // Device header
//#include "delay.h"
#include "stdio.h"
#include "usart_f4.h"
#include "misc.h"
#include "f4_sys_tick.h"
#include "gpio_f4.h"

int main(){
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
	GPIO_Config(GPIOB, GPIO_Pin_0 | GPIO_Pin_7 | GPIO_Pin_14, GPIO_Mode_OUT, GPIO_OType_PP, GPIO_PuPd_NOPULL, GPIO_Speed_2MHz);
	while(1){
//	printf("STM32F446ZET6U \n");	
//	delay_ms(1000);
		GPIO_SetBits  (GPIOB, GPIO_Pin_7);
		delay_ms(1000);
		GPIO_ResetBits  (GPIOB, GPIO_Pin_7);
		delay_ms(1000);
	}
}


