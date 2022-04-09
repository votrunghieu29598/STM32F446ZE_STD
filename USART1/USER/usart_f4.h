#ifndef _USART2_H_
#define _USART2_H_
#include <stdint.h>
#include "stm32f4xx.h"                  // Device header
#include "delay.h"
#include "stdio.h"
#include "stdint.h"
#include "misc.h"
#include "f4_sys_tick.h"

#define USART_Buadrate_600  			600
#define USART_Buadrate_1200  			1200
#define USART_Buadrate_2400  			2400
#define USART_Buadrate_4800  			4800
#define USART_Buadrate_9600  			9600
#define USART_Buadrate_14400  		14400
#define USART_Buadrate_19200 			19200
#define USART_Buadrate_38400  		38400
#define USART_Buadrate_56000 			56000
#define USART_Buadrate_57600 			57600
#define USART_Buadrate_115200  		115200
/*
             |PIN 1     		 |PIN2     			 |PIN 3	
U(S)ARTX     |TX     RX      |TX     RX      |TX     RX

USART1       |PA9    PA10    |PB6    PB7     |-      -
USART2       |PA2    PA3     |PD5    PD6     |-      -
USART3       |PB10   PB11    |PC10   PC11    |PD8    PD9
UART4        |PA0    PA1     |PC10   PC11    |-      -
UART5        |PC12   PD2     |-      -       |-      -
USART6       |PC6    PC7     |PG14   PG9     |-      -
UART7        |PE8    PE7     |PF7    PF6     |-      -
UART8        |PE1    PE0     |-      -       |-      -
*/
#define USART1_Pin1					0xA0
#define USART1_Pin2					0xA1
#define USART2_Pin1					0xA2
#define USART2_Pin2					0xA3
#define USART3_Pin1					0xA5
#define USART3_Pin2					0xA6
#define USART3_Pin3					0xA7
#define UART4_Pin1					0xA8
#define UART4_Pin2					0xA9
#define UART5_Pin						0xB1
#define USART6_Pin1					0xB2
#define USART6_Pin2					0xB3
#define UART7_Pin1					0xB4
#define UART7_Pin2					0xB5
#define UART8_Pin1					0xB6



#define TX 	GPIO_Pin_5
#define RX 	GPIO_Pin_6	
#define BUFFERSIZE  32

/**************************************************************/

void USART_Initstruct (USART_TypeDef* USARTx, uint32_t USART_Pin,uint32_t Buad_rate ,uint8_t USART_HFC, uint8_t Mode, uint8_t Parity, uint8_t Stop_Bit,uint8_t WLength);
void Usart_Send_Char (USART_TypeDef* USARTx, volatile char c);
void Usart_Send_String (USART_TypeDef* USARTx, uint8_t *string);
/**************************************************************/
#endif







