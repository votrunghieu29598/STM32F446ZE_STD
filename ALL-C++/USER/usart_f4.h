#ifndef _USART2_H_
#define _USART2_H_
#include "main.h" 

#define BufferSize   		59
static volatile char Rx_data[BufferSize]={0};
static volatile uint8_t Rx_indx = 0;

typedef enum
{
  USART_Buadrate_600 = 600,
  USART_Buadrate_1200 = 1200,
  USART_Buadrate_2400 = 2400,
  USART_Buadrate_4800 = 4800,
  USART_Buadrate_9600 = 9600,
  USART_Buadrate_14400 = 14400,
  USART_Buadrate_19200 = 19200,
  USART_Buadrate_38400 = 38400,
  USART_Buadrate_56000 = 56000,
  USART_Buadrate_57600 = 57600,
  USART_Buadrate_115200 = 115200,
}USART_Buadrate;

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

/**************************************************************/

void USART_Initstruct (USART_TypeDef* USARTx, uint8_t USART_Pin, uint32_t Buad_rate ,uint16_t USART_HFC, uint16_t Mode, uint16_t Parity, uint16_t Stop_Bit,uint16_t WLength);
void USART_Send_Char (USART_TypeDef* USARTx, volatile char c);
void USART_Send_String (USART_TypeDef* USARTx, volatile char *string);
void USART_ClearBuff (USART_TypeDef* USARTx, volatile char buff[]);
unsigned char USART_MyStrcmp (char* buff[],uint8_t len,char* str);
/**************************************************************/
#endif







