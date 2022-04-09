#include "stm32f4xx.h"                  // Device header
#include "delay.h"
#include "stdio.h"
#include "usart2.h"

void USART2_Initstruct (void){
	RCC_APB1PeriphClockCmd  (RCC_APB1Periph_USART2, ENABLE);
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOD, ENABLE);
	
	GPIO_InitTypeDef GPIO_Initsrtruct;
	GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_AF;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
	GPIO_Initsrtruct.GPIO_Pin = TX | RX;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init (GPIOD, &GPIO_Initsrtruct);
	
	GPIO_PinAFConfig  (GPIOD, GPIO_PinSource5, GPIO_AF_USART2);
	GPIO_PinAFConfig  (GPIOD, GPIO_PinSource6, GPIO_AF_USART2);
	
	USART_InitTypeDef USART2_Init;
	USART2_Init.USART_BaudRate = 9600;
	USART2_Init.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART2_Init.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART2_Init.USART_Parity = USART_Parity_No;
	USART2_Init.USART_StopBits = USART_StopBits_1;
	USART2_Init.USART_WordLength = USART_WordLength_8b;
	USART_Init  (USART2, &USART2_Init);
	USART_Cmd  (USART2, ENABLE);
}
void Usart2_Send_Char (volatile char c){
	USART_SendData  (USART2,c);
	while(!USART_GetFlagStatus  (USART2,USART_FLAG_TXE));
}
void Usart2_Send_String (uint8_t *string){
	while(*string) Usart2_Send_Char(*string++);
}
struct __FILE {
	int dummy;
};
FILE __stdout;
int fputc(int ch, FILE *f) {
	Usart2_Send_Char(ch);
	return ch;
}








