#ifndef _USART2_H_
#define _USART2_H_
#include <stdint.h>

#define TX 	GPIO_Pin_5
#define RX 	GPIO_Pin_6	
#define BUFFERSIZE  32

/**************************************************************/

void USART2_Initstruct (void);
void Usart2_Send_Char (volatile char c);
void Usart2_Send_String (uint8_t *string);
/**************************************************************/
#endif







