#include "stm32f4xx.h"                  // Device header
#include "delay.h"
#include "i2c_f4.h"
#include "usart2.h"
#include "stdio.h"
#define name_pcf8574		"PCF8574"
void GPIO_Config (void){
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
	
	GPIO_InitTypeDef GPIO_Initsrtruct;
	GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
	GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_7 | GPIO_Pin_14 ;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init (GPIOB, &GPIO_Initsrtruct);
	GPIO_WriteBit(GPIOB, GPIO_Pin_7, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_14, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_0, Bit_SET);
}
u8 add;
int main(){
	GPIO_Config();
	Timer6_Delay();
	USART2_Initstruct();
//	I2C_Initstruct(I2C3,I2C3_PinAB84,I2C_CLOCK_STANDARD);
//	I2C_Scan_ADD(I2C3,add);
//	I2C_Check_Connected(I2C3,0x40,name_pcf8574);
	while(1){
//	I2C_Write_Data(I2C3,0x40,0x00,0x80);
//	delay_ms(100);
//	I2C_Write_Data(I2C3,0x40,0x00,0x00);
//	delay_ms(100);
		delay_ms(1000);
		printf("helo");
 }
}

