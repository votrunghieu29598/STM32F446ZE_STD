#include "stm32f4xx.h"                  // Device header
//#include "delay.h"
#include "stdio.h"
#include "usart_f4.h"
#include "misc.h"
#include "f4_sys_tick.h"
#include "gpio_f4.h"
uint32_t PA0_Bit_Band_add;
uint32_t PB0_Bit_Band_add;
uint32_t PE0_Bit_Band_add;
uint32_t PF0_Bit_Band_add;
uint32_t PG0_Bit_Band_add;
uint32_t PH0_Bit_Band_add;

u8 pin_num = 14;
uint8_t temp;
//bit_band_address = alias_region_base + (region_base_offset x 32) + (bit_number x 4)
int main(){
	Timer6_Delay();
	SysTick_Configuration();
//	USART_Initstruct(USART2,
//									 USART2_Pin2,
//									 USART_Buadrate_9600, 
//								 	 USART_HardwareFlowControl_None,
//								 	 USART_Mode_Rx | USART_Mode_Tx, 
//									 USART_Parity_No,
//									 USART_StopBits_1,
//									 USART_WordLength_8b);
	
		GPIO_Config(GPIOA, GPIO_Pin_3, GPIO_Mode_OUT, GPIO_OType_PP, GPIO_PuPd_DOWN, GPIO_Speed_2MHz);
//	GPIO_Config(GPIOB, GPIO_Pin_9, GPIO_Mode_OUT, GPIO_OType_PP, GPIO_PuPd_NOPULL, GPIO_Speed_2MHz);
//		GPIO_Config(GPIOC, GPIO_Pin_8, GPIO_Mode_IN, GPIO_OType_PP, GPIO_PuPd_DOWN, GPIO_Speed_2MHz);
		GPIO_Config(GPIOD, GPIO_Pin_7, GPIO_Mode_OUT, GPIO_OType_PP, GPIO_PuPd_NOPULL, GPIO_Speed_2MHz);
	
//	GPIO_Config(GPIOE, GPIO_Pin_2, GPIO_Mode_OUT, GPIO_OType_PP, GPIO_PuPd_NOPULL, GPIO_Speed_2MHz);
//	GPIO_Config(GPIOF, GPIO_Pin_9, GPIO_Mode_OUT, GPIO_OType_PP, GPIO_PuPd_NOPULL, GPIO_Speed_2MHz);
//	GPIO_Config(GPIOG, GPIO_Pin_1, GPIO_Mode_OUT, GPIO_OType_PP, GPIO_PuPd_NOPULL, GPIO_Speed_2MHz);
//	GPIO_Config(GPIOH, GPIO_Pin_7, GPIO_Mode_OUT, GPIO_OType_PP, GPIO_PuPd_NOPULL, GPIO_Speed_2MHz);
//	PB7_Bit_Band_add = PERIPH_BB_BASE + ((uint32_t)(&GPIOA->ODR) * 32) + (0 * 4);
//	PB7_ODR_Offset =  (uint32_t)(&GPIOB->ODR) ;
//	PB7_IDR_Offset =  (uint32_t)(&GPIOB->IDR) ;
//	PA0_Bit_Band_add = PERIPH_BB_BASE + ((uint32_t)(&GPIOA-> IDR ) * 32) + (0 * 4);
//	PB0_Bit_Band_add = PERIPH_BB_BASE + ((uint32_t)(&GPIOB->IDR) * 32) + (0 * 4);
//	PE0_Bit_Band_add = PERIPH_BB_BASE + ((uint32_t)(&GPIOE->ODR) * 32) + (0 * 4);
//	PF0_Bit_Band_add = PERIPH_BB_BASE + ((uint32_t)(&GPIOF->ODR) * 32) + (0 * 4);
//	PG0_Bit_Band_add = PERIPH_BB_BASE + ((uint32_t)(&GPIOG->ODR) * 32) + (0 * 4);
//	PH0_Bit_Band_add = PERIPH_BB_BASE + ((uint32_t)(&GPIOH->ODR) * 32) + (0 * 4);
//	A0_OUT = 1;
//	A1_OUT = 1;
//	PB14_Bit_Band_add1 = 0x42000000 + 0x40020400 * 32 + 14 * 4;
//		A0_OUT = 1;

//	(*(volatile uint32_t*)0x42408280) = 1;
//	(*(volatile uint32_t*)0x424082B8) = 1;
	while(1){
		
		D7_OUT = A3_IN;
//	GPIO_SetBits(GPIOA,GPIO_Pin_15);
	}
}


