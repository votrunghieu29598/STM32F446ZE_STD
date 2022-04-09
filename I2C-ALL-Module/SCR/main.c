#include "stm32f4xx.h"                  // Device header
#include "i2c_f4.h"
#include "usart2.h"
#include "stdio.h"
#include "i2c_ds1307.h"
#include "i2c_mpu6050.h"
#include "i2c_pcf8574.h"
#include "i2c_tcs34725.h"
#include "f4_ssd1306.h"
#include "f4_fonts.h"
#include "horse_anim.h"
#include "bitmap.h"
#include "f4_sys_tick.h"
#include "stm32f4xx_wwdg.h"
void GPIO_Config (void){
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
	
	GPIO_InitTypeDef GPIO_Initsrtruct;
	GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
	GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_7 | GPIO_Pin_14 | GPIO_Pin_4;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init (GPIOB, &GPIO_Initsrtruct);
	GPIO_WriteBit(GPIOB, GPIO_Pin_7, Bit_RESET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_14, Bit_RESET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_0, Bit_SET);
}
u8 add;
void MCP23017_Write_Data(I2C_TypeDef* I2Cx, uint8_t add, uint8_t subaddr, uint8_t data){
	I2C_Start(I2Cx,ENABLE);
	I2C_Send_ADD(I2Cx,add,Send);
	I2C_Write(I2Cx,subaddr);
//	I2C_Stop(I2Cx,ENABLE);
	
//	I2C_Start(I2Cx,ENABLE);
//	I2C_Send_ADD(I2Cx,add,Send);
	I2C_Write(I2Cx,data);
	I2C_Stop(I2Cx,ENABLE);
}
int main(){
	GPIO_Config();
	Timer6_Delay();
	SysTick_Configuration();
	USART2_Initstruct();
	SSD1306_Init();
	delay_ms(1000);
	printf("heloo \n");
	/* Check if the system has resumed from WWDG reset */
  if (RCC_GetFlagStatus(RCC_FLAG_WWDGRST) != RESET)
  { 
    /* WWDGRST flag set */
    /* Turn on LED1 */
    GPIO_WriteBit(GPIOB, GPIO_Pin_14, Bit_SET);

    /* Clear reset flags */
    RCC_ClearFlag();
  }
  else
  {
    /* WWDGRST flag is not set */
    /* Turn off LED1 */
   GPIO_WriteBit(GPIOB, GPIO_Pin_14, Bit_RESET);
  }
	SSD1306_GotoXY (0,0);
	SSD1306_Puts ("HELLO", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_GotoXY (10, 30);
	SSD1306_Puts ("STM32F446ZET6U", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_UpdateScreen();
	
	printf("heloo \n");
	GPIO_WriteBit(GPIOB, GPIO_Pin_7, Bit_SET);
	Delay_Sys_ms(1000);
	GPIO_WriteBit(GPIOB, GPIO_Pin_7, Bit_RESET);
	Delay_Sys_ms(1000);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_WWDG, ENABLE);

  /* WWDG clock counter = (PCLK1 (42MHz)/4096)/8 = 1281 Hz (~780 us)  */
  WWDG_SetPrescaler(WWDG_Prescaler_8);

  /* Set Window value to 80; WWDG counter should be refreshed only when the counter
    is below 80 (and greater than 64) otherwise a reset will be generated */
  WWDG_SetWindowValue(80);

  /* Enable WWDG and set counter value to 127, WWDG timeout = ~780 us * 64 = 49.92 ms 
     In this case the refresh window is: 
           ~780 * (127-80) = 36.6ms < refresh window < ~780 * 64 = 49.9ms
  */
  WWDG_Enable(127);
	
	
	while(1){
		Delay_Sys_ms(40);
	WWDG_SetCounter(127);
 }
}
