#include "usart_f4.h"

void USART_Initstruct (USART_TypeDef* USARTx,						
											 uint32_t USART_Pin,
											 uint32_t Buad_rate ,
											 uint8_t USART_HFC,
											 uint8_t Mode, 
											 uint8_t Parity, 
											 uint8_t Stop_Bit,
										 	 uint8_t WLength){
												 
	NVIC_InitTypeDef NVIC_InitStructure;
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;											 
	uint32_t pin = USART_Pin;
												 
/* ------------------------- Config GPIO USART1 ------------------------- */
	if(USARTx == USART1 && pin == USART_Pin){
		if(pin == (USART1_Pin1)){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOA, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
			
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9 | GPIO_Pin_10;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOA, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOA, GPIO_PinSource9, GPIO_AF_USART1);
			GPIO_PinAFConfig  (GPIOA, GPIO_PinSource10, GPIO_AF_USART1);
		}else if ( pin == USART1_Pin2){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;

			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_7;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOB, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource6, GPIO_AF_USART1);
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource7, GPIO_AF_USART1);			
			
		}
	}
/* ------------------------- Config GPIO USART2 ------------------------- */	
	else if (USARTx == USART2 && pin == USART_Pin){
		if(pin == (USART2_Pin1)){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOA, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;

			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2 | GPIO_Pin_3;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOA, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOA, GPIO_PinSource2, GPIO_AF_USART2);
			GPIO_PinAFConfig  (GPIOA, GPIO_PinSource3, GPIO_AF_USART2);
		}else if ( pin == USART2_Pin2){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOD, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;

			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5 | GPIO_Pin_6;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOD, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOD, GPIO_PinSource5, GPIO_AF_USART2);
			GPIO_PinAFConfig  (GPIOD, GPIO_PinSource6, GPIO_AF_USART2);			
		}
	}
/* ------------------------- Config GPIO USART3 ------------------------- */	
	else if (USARTx == USART3 && pin == USART_Pin){
		if(pin == (USART3_Pin1)){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
			
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10 | GPIO_Pin_11;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOB, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource10, GPIO_AF_USART3);
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource11, GPIO_AF_USART3);
		}else if (pin == USART3_Pin2){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOC, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;

			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10 | GPIO_Pin_11;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOC, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOC, GPIO_PinSource10, GPIO_AF_USART3);
			GPIO_PinAFConfig  (GPIOC, GPIO_PinSource11, GPIO_AF_USART3);			
		}else if ( pin == USART3_Pin3){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOD, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;

			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOD, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOD, GPIO_PinSource8, GPIO_AF_USART3);
			GPIO_PinAFConfig  (GPIOD, GPIO_PinSource9, GPIO_AF_USART3);			
		}			
		
	}
/* ------------------------- Config GPIO UART4 ------------------------- */	
	else if (USARTx == UART4 && pin == USART_Pin){
		if(pin == (UART4_Pin1)){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOA, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = UART4_IRQn;
			
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOA, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOA, GPIO_PinSource0, GPIO_AF_UART4);
			GPIO_PinAFConfig  (GPIOA, GPIO_PinSource1, GPIO_AF_UART4);
		}else if ( pin == UART4_Pin2){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOC, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = UART4_IRQn;

			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10 | GPIO_Pin_11;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOC, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOC, GPIO_PinSource10, GPIO_AF_UART4);
			GPIO_PinAFConfig  (GPIOC, GPIO_PinSource11, GPIO_AF_UART4);			
		}
	}
/* ------------------------- Config GPIO UART5 ------------------------- */		
	else if (USARTx == UART5 && pin == USART_Pin){
		if(pin == (UART5_Pin)){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOC, ENABLE);
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOD, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = UART5_IRQn;

			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOC, &GPIO_InitStructure);
			GPIO_Init (GPIOD, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOC, GPIO_PinSource12, GPIO_AF_UART5);
			GPIO_PinAFConfig  (GPIOD, GPIO_PinSource2, GPIO_AF_UART5);
		}
	}
/* ------------------------- Config GPIO USART6 ------------------------- */		
	else if (USARTx == USART6 && pin == USART_Pin){
		if(pin == (USART3_Pin1)){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOC, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = USART6_IRQn;
			
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_7;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOC, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOC, GPIO_PinSource6, GPIO_AF_USART6);
			GPIO_PinAFConfig  (GPIOC, GPIO_PinSource7, GPIO_AF_USART6);
		}else if (pin == USART3_Pin2){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOG, ENABLE);
			NVIC_InitStructure.NVIC_IRQChannel = USART6_IRQn;

			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
			GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14 | GPIO_Pin_9;
			GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOG, &GPIO_InitStructure);
			
			GPIO_PinAFConfig  (GPIOG, GPIO_PinSource14, GPIO_AF_USART6);
			GPIO_PinAFConfig  (GPIOG, GPIO_PinSource9, GPIO_AF_USART6);			
		}		
	}else if (USARTx == UART7 && pin == USART_Pin){
		
	}else if (USARTx == UART8 && pin == USART_Pin){
		
	}
	
	
	if(USARTx == USART1){
		RCC_APB2PeriphClockCmd (RCC_APB2Periph_USART1, ENABLE);
	}
	else if (USARTx == USART2){
		RCC_APB1PeriphClockCmd  (RCC_APB1Periph_USART2, ENABLE); 
	}
	else if (USARTx == USART3){
		RCC_APB1PeriphClockCmd  (RCC_APB1Periph_USART3, ENABLE); 
	}
	else if (USARTx == UART4){
		RCC_APB1PeriphClockCmd  (RCC_APB1Periph_UART4, ENABLE);
	}
	else if (USARTx == UART5){
		RCC_APB1PeriphClockCmd  (RCC_APB1Periph_UART5, ENABLE);
	}
	else if (USARTx == USART6){
		RCC_APB2PeriphClockCmd (RCC_APB2Periph_USART6, ENABLE);
	}
	else if (USARTx == UART7){
		RCC_APB1PeriphClockCmd  (RCC_APB1Periph_UART7, ENABLE); 
	}
	else if (USARTx == UART8){
		RCC_APB1PeriphClockCmd  (RCC_APB1Periph_UART8, ENABLE);
	}
	
	USART_DeInit(USARTx);
	

	USART_InitStructure.USART_BaudRate = Buad_rate;
	USART_InitStructure.USART_HardwareFlowControl = USART_HFC;
	USART_InitStructure.USART_Mode = Mode;
	USART_InitStructure.USART_Parity = Parity;
	USART_InitStructure.USART_StopBits = Stop_Bit;
	USART_InitStructure.USART_WordLength = WLength;
	USART_Init  (USARTx, &USART_InitStructure);
	USART_ITConfig(USARTx, USART_IT_RXNE, ENABLE);
	USART_Cmd  (USARTx, ENABLE);
	
  
  /* Enable the USARTx Interrupt */
	NVIC_PriorityGroupConfig  (NVIC_PriorityGroup_4);
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}
											 
void Usart_Send_Char (USART_TypeDef* USARTx, volatile char c){
	USART_SendData  (USARTx,c);
	while(!USART_GetFlagStatus  (USARTx,USART_FLAG_TXE));
}
void Usart_Send_String (USART_TypeDef* USARTx, uint8_t *string){
	while(*string) Usart_Send_Char(USARTx, *string++);
}
struct __FILE {
	int dummy;
};
FILE __stdout;
int fputc(int ch, FILE *f) {
	Usart_Send_Char(USART2,ch);
	return ch;
}
void USART1_IRQHandler(void)
{
	// Neu xay ra ngat USART6
	if (USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
	{
		// Nhan du lieu ve va gui di ngay
		USART_SendData(USART1, USART_ReceiveData(USART6));
		// Tat den LED o chan 12 cong D de bao hieu ket thuc truyen du lieu
		GPIO_SetBits  (GPIOB, GPIO_Pin_7);
		delay_ms(1000);
		GPIO_ResetBits  (GPIOB, GPIO_Pin_7);
		delay_ms(1000);
	}
}








