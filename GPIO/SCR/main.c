#include "stm32f4xx.h"                  // Device header
#include "delay.h"
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
int main(){
	GPIO_Config();
	Timer6_Delay();
	while(1){
	GPIO_WriteBit(GPIOB, GPIO_Pin_7, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_14, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_0, Bit_SET);	
	delay_ms(1000);
	GPIO_WriteBit(GPIOB, GPIO_Pin_7, Bit_RESET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_14, Bit_RESET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_0, Bit_RESET);	
	delay_ms(1000);	
	}
}


