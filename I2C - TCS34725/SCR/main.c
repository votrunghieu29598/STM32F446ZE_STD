#include "stm32f4xx.h"                  // Device header
#include "delay.h"
#include "stdio.h"
#include "i2c.h"
#include "usart2.h"
#include "i2c_lcd.h"
#include "i2c_tcs34725.h"
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
u8 data123[9];
typedef struct
{
    uint16_t Red;
    uint16_t Green;
    uint16_t Blue;
    uint16_t Clear;
} RGBC;
typedef struct
{
    uint8_t Red;
    uint8_t Green;
    uint8_t Blue;
} RGB;
u8  raw_data[9]={0},data=0;
	u16 datas[4]={0};
	RGBC rgbc={0,0,0,0};
	RGB rgb={0,0,0};
	uint16_t CT=0,Lux=0;
	u8 color=0;
	
int main(){
	GPIO_Config();
	I2C_Config();
	Timer6_Delay();
	USART2_Initstruct();
	Lcd_Init();
	TCS34725_Init();
	TCS34725_Enable();
	TCS34725_Setup();
	delay_ms(1000);
	while(1){	
		uint16_t r, g, b, c, colorTemp, lux;
		TCS34725_GetRawData(&r, &g, &b, &c);
	
		printf("Do:%d Xanh_la:%d xanh_bien:%d clear:%d \n",r,g,b,c);
		I2C_Scan_ADD();
		delay_ms(1000);
		if((r > g) && (r > b) ){
			printf("mau do ");
		}
		else if((g > r) && (g > b) ){
			printf("mau xanh la ");
		}
		else if((b > g) && (b > r) ){
			printf("mau xanh duong ");
		}
	}
}


