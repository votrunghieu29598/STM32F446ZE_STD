#include "stm32f4xx.h"                  // Device header
#include "delay.h"
#include "stdio.h"
#include "i2c.h"
#include "usart2.h"
#include "i2c_lcd.h"
void GPIO_Config (void){
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
	
	GPIO_InitTypeDef GPIO_Initsrtruct;
	GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
	GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_7 | GPIO_Pin_14  ;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init (GPIOB, &GPIO_Initsrtruct);
	GPIO_WriteBit(GPIOB, GPIO_Pin_0, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_7, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_14, Bit_SET);
}
u8 add,i;
int main(){
	GPIO_Config();
	I2C_Config();
	Timer6_Delay();
	USART2_Initstruct();
	Lcd_Init();
	delay_ms(1000);
	while(1){
		Lcd_clear();
		Lcd_Set_Cursor(1,1);
		Lcd_Write_String("STM32   ");
		Lcd_Set_Cursor(2,1);
		Lcd_Write_String("lcd1602");
		delay_ms(1000);
		
	}
}


