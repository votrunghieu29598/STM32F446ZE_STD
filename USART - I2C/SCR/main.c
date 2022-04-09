#include "stm32f4xx.h"                  // Device header
//#include "delay.h"
#include "stdio.h"
#include "string.h"
#include "usart_f4.h"
#include "misc.h"
#include "f4_sys_tick.h"
#include "i2c_f4.h"
#include "i2c_pcf8574.h"

void GPIO_Config (void){
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
	
	GPIO_InitTypeDef GPIO_Initsrtruct;
	GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
	GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_7 | GPIO_Pin_14 ;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init (GPIOB, &GPIO_Initsrtruct);
	
}
volatile uint8_t Rx_byte;
volatile uint8_t Rx_data[20];
volatile uint8_t Rx_indx = 0;
void IWDG_Init(void)
{
 IWDG_SetPrescaler  (IWDG_Prescaler_256);
 IWDG_SetReload  (4096);
	IWDG_Enable();
}
int main(){
	GPIO_Config();
	Timer6_Delay();
	SysTick_Configuration();
	IWDG_Init();
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
	
	while(1){
//	printf("STM32F446ZET6U \n");	
//	delay_ms(1000);
		GPIO_SetBits  (GPIOB, GPIO_Pin_0);
		delay_ms(100);
		GPIO_ResetBits  (GPIOB, GPIO_Pin_0);
		delay_ms(100);
		IWDG_ReloadCounter(); 
	}
}
void USART2_IRQHandler(void)
{
	char* a;
	if (USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
	{
		if (Rx_indx ==0){ for( u8 i = 0; i < 100; i++) Rx_data[i] = 0;}
		Rx_data[Rx_indx++] = USART_ReceiveData(USART2);

	 if( strstr((char*)Rx_data,"BAT1\n")){
			GPIO_SetBits  (GPIOB, GPIO_Pin_7);
			delay_ms(1000);
			GPIO_ResetBits  (GPIOB, GPIO_Pin_7);
			delay_ms(1000);
		  Rx_indx =0;
			}
	else if( strstr((char*)Rx_data,"BAT2\n")){
			GPIO_SetBits  (GPIOB, GPIO_Pin_14);
			delay_ms(1000);
			GPIO_ResetBits  (GPIOB, GPIO_Pin_14);
			delay_ms(1000);
		  Rx_indx =0;
		}
	else if( strstr((char*)Rx_data,"BAT1 BAT2")){
			GPIO_SetBits  (GPIOB, GPIO_Pin_14);
			delay_ms(1000);
			GPIO_ResetBits  (GPIOB, GPIO_Pin_14);
			delay_ms(1000);
		  GPIO_SetBits  (GPIOB, GPIO_Pin_7);
			delay_ms(1000);
			GPIO_ResetBits  (GPIOB, GPIO_Pin_7);
			delay_ms(1000);
		  Rx_indx =0;
		}
	
	}
}	


