#include "stm32f4xx.h"                  // Device header
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "usart_f4.h"
#include "f4_sys_tick.h"
#include "i2c_f4.h"
#include "gpio_f4.h"
#include "spi_f4.h"
#include "w25q64_f4.h"
#include "f4_ssd1306.h"
#include "f4_fonts.h"


#define BT1 				C13_IN
#define LED1 				B0_OUT
#define LED2 				B7_OUT	
#define LED3 				B14_OUT			

void EXTILine13_Config(void);
void ADC_Config (void);
void IWDG_Config(void);

uint16_t Read_ADC1(u8 channel);
uint16_t value_adc,Data_lux;
float Lux;
char c[10],lx[15];
u8 add,buff_lx[2]= {0};

int main(){
	GPIO_Config(GPIOB, 
							GPIO_Pin_0 |  GPIO_Pin_7 |  GPIO_Pin_14 |  GPIO_Pin_11, 
							GPIO_Mode_OUT,
							GPIO_OType_PP,
							GPIO_PuPd_UP,
							GPIO_Speed_25MHz);
	GPIO_Config(GPIOE, 
							GPIO_Pin_0, 
							GPIO_Mode_IN,
							GPIO_OType_PP,
							GPIO_PuPd_NOPULL,
							GPIO_Speed_25MHz);
	SYSTICK_Config(tick1ms);
	USART_Initstruct(USART2,
									 USART2_Pin2,	
									 USART_Buadrate_9600, 
								 	 USART_HardwareFlowControl_None, 
								 	 USART_Mode_Rx | USART_Mode_Tx, 
									 USART_Parity_No, 
									 USART_StopBits_1, 
									 USART_WordLength_8b);
	SSD1306_Init();
	
	EXTILine13_Config();
	ADC_Config();
	SSD1306_Clear();
							// cot, hang
	SSD1306_GotoXY (0,0);
	SSD1306_Puts ("HELLO STM32F446ZE ", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_GotoXY (5, 30);
	SSD1306_Puts ("HELLO WORLD", &Font_11x18, SSD1306_COLOR_WHITE);
	SSD1306_UpdateScreen();
	
	delay_ms(2000);
	SSD1306_Clear();
	SSD1306_GotoXY (0,0);
	SSD1306_Puts ("HELLO STM32F446ZE  ", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_GotoXY (0,10);
	SSD1306_Puts ("Vo Trung Hieu", &Font_7x10, SSD1306_COLOR_WHITE);
	delay_ms(20);
	SSD1306_GotoXY (0, 20);
	SSD1306_Puts ("LED1:OFF", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_GotoXY (0, 30);
	SSD1306_Puts ("LED2:OFF", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_GotoXY (0, 40);
	SSD1306_Puts ("LED3:OFF", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_GotoXY (60, 20);
	SSD1306_Puts ("LED4:OFF", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_GotoXY (60, 30);
	SSD1306_Puts ("LED5:OFF", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_GotoXY (60, 40);
	SSD1306_Puts ("LED6:OFF", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_UpdateScreen();	
	IWDG_Config();

	delay_ms(20);
	while(1)
	{
//		B11_OUT = 1;
//		LED1 = 1;
//		Delaysys_ms(500);
//		B11_OUT = 0;
//		LED1 = 0;
//		Delaysys_ms(500);
		//BH1750
		I2C_Write_Data(I2C1,0x46,0x10,0x10);
		Delaysys_ms(200);
		I2C_Read_MutiData(I2C1,0x46,0x00,2,buff_lx);
		Data_lux = (buff_lx[0] << 8) + buff_lx[1];
		Lux = Data_lux / 1.2;
		
		sprintf(lx,"Lux: %4.2f   ",Lux);
		SSD1306_GotoXY (0, 50);
		SSD1306_Puts (lx, &Font_7x10, SSD1306_COLOR_WHITE);
		SSD1306_UpdateScreen();
//		printf ("Lux = %4.2f\n", Data_lux);

//		value_adc = Read_ADC1(ADC_Channel_3);
//		sprintf(c,"Val_ADC: %d    ",value_adc);
//		printf("%d   ",value_adc);
//		SSD1306_GotoXY (0, 50);
//		SSD1306_Puts (c, &Font_7x10, SSD1306_COLOR_WHITE);
//		SSD1306_UpdateScreen();
//		Delaysys_ms(200);
		delay_ms(500);
		IWDG_ReloadCounter(); 
	}
}
void USART2_IRQHandler(void)
{
char* data[10] = {0};
uint8_t i = 0,z = 0;

if (USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
	{
		
		SSD1306_GotoXY (0,0);
		SSD1306_Puts ("HELLO STM32F446ZE   ", &Font_7x10, SSD1306_COLOR_WHITE);
		SSD1306_GotoXY (0,10);
		SSD1306_Puts ("Vo Trung Hieu", &Font_7x10, SSD1306_COLOR_WHITE);
		
		/*Xoa du lieu buffer cu truoc khi luu du lieu moi vao buffer*/
		if (Rx_indx == 0){ for( i = 0; i < 255; ++i) {Rx_data[i] = 0;}}
		/*luu du lieu vao buffer*/
		Rx_data[Rx_indx++] = USART2 -> DR;
		/*kiem tra do dai cua chuoi hoac kiem tra khong co ky tu \r dau buffer thi bao loi len pc*/
		if(strlen((const char*)Rx_data) > BufferSize || strchr((char*)Rx_data,'\r') == NULL)
		{
			Rx_indx = 0;
			printf("\nERROR_BUFFER\n");
		}
		/* 
			kiem tra co ky tu +,\r ,\n o cuoi buffer khong
			VD: <CR>0+LED4_ON+LED2_ON+LED3_ON+LED1_ON+LED5_ON+LED6_ON+<CR><LF>
		*/
		else if(strstr((char*)Rx_data,"+\r\n") != NULL)
		{
			/* 
			tach chuoi con trong chuoi lon 
			https://stackoverflow.com/questions/15472299/split-string-into-tokens-and-save-them-in-an-array
			*/
			data[z] = strtok((char*)Rx_data,"+");
			while (data[z] != NULL)
			{
				data[++z] = strtok(NULL,"+");
				Rx_indx = 0;
			}
			// xuat nguoc lai len pc kiem tra
			printf("%s\n",data[0]);// = 0;// bo mang phan tu dau tien (array[0]) tranh nhieu;
			printf("%s\n",data[1]);// = LED4_ON;
			printf("%s\n",data[2]);// = LED2_ON;
			printf("%s\n",data[3]);//
			printf("%s\n",data[4]);
			printf("%s\n",data[5]);
			printf("%s\n",data[6]);	
			
			// LED 1
			if(strcmp(data[1],"LED1_ON") == 0 || strcmp(data[2],"LED1_ON") == 0 || strcmp(data[3],"LED1_ON") == 0 
			|| strcmp(data[4],"LED1_ON") == 0 || strcmp(data[5],"LED1_ON") == 0 || strcmp(data[6],"LED1_ON") == 0 )
			{
				B0_OUT = 1;
				SSD1306_GotoXY (0, 20);
				SSD1306_Puts ("LED1:ON ", &Font_7x10, SSD1306_COLOR_WHITE);
				SSD1306_UpdateScreen();
			}
			if(strcmp(data[1],"LED1_OFF") == 0 || strcmp(data[2],"LED1_OFF") == 0 || strcmp(data[3],"LED1_OFF") == 0 
			|| strcmp(data[4],"LED1_OFF") == 0 || strcmp(data[5],"LED1_OFF") == 0 || strcmp(data[6],"LED1_OFF") == 0 )
			{
				B0_OUT = 0;
				SSD1306_GotoXY (0, 20);
				SSD1306_Puts ("LED1:OFF", &Font_7x10, SSD1306_COLOR_WHITE);				
				SSD1306_UpdateScreen();
			}
			// LED2
			if(strcmp(data[1],"LED2_ON") == 0 || strcmp(data[2],"LED2_ON") == 0 || strcmp(data[3],"LED2_ON") == 0 
			|| strcmp(data[4],"LED2_ON") == 0 || strcmp(data[5],"LED2_ON") == 0 || strcmp(data[6],"LED2_ON") == 0 )
			{
				B7_OUT = 1;
				SSD1306_GotoXY (0, 30);
				SSD1306_Puts ("LED2:ON ", &Font_7x10, SSD1306_COLOR_WHITE);
				SSD1306_UpdateScreen();
			}
			if(strcmp(data[1],"LED2_OFF") == 0 || strcmp(data[2],"LED2_OFF") == 0 || strcmp(data[3],"LED2_OFF") == 0 
			|| strcmp(data[4],"LED2_OFF") == 0 || strcmp(data[5],"LED2_OFF") == 0 || strcmp(data[6],"LED2_OFF") == 0 )
			{
				B7_OUT = 0;
				SSD1306_GotoXY (0, 30);
				SSD1306_Puts ("LED2:OFF", &Font_7x10, SSD1306_COLOR_WHITE);
				SSD1306_UpdateScreen();
			}
			// LED 3
			if(strcmp(data[1],"LED3_ON") == 0 || strcmp(data[2],"LED3_ON") == 0 || strcmp(data[3],"LED3_ON") == 0 
			|| strcmp(data[4],"LED3_ON") == 0 || strcmp(data[5],"LED3_ON") == 0 || strcmp(data[6],"LED3_ON") == 0 )
			{
				B14_OUT = 1;
				SSD1306_GotoXY (0, 40);
				SSD1306_Puts ("LED3:ON ", &Font_7x10, SSD1306_COLOR_WHITE);
				SSD1306_UpdateScreen();
			}
			if(strcmp(data[1],"LED3_OFF") == 0 || strcmp(data[2],"LED3_OFF") == 0 || strcmp(data[3],"LED3_OFF") == 0 
			|| strcmp(data[4],"LED3_OFF") == 0 || strcmp(data[5],"LED3_OFF") == 0 || strcmp(data[6],"LED3_OFF") == 0 )
			{
				B14_OUT = 0;
				SSD1306_GotoXY (0, 40);
				SSD1306_Puts ("LED3:OFF", &Font_7x10, SSD1306_COLOR_WHITE);
				SSD1306_UpdateScreen();
			}
			// LED 4
			if(strcmp(data[1],"LED4_ON") == 0 || strcmp(data[2],"LED4_ON") == 0 || strcmp(data[3],"LED4_ON") == 0 
			|| strcmp(data[4],"LED4_ON") == 0 || strcmp(data[5],"LED4_ON") == 0 || strcmp(data[6],"LED4_ON") == 0 )
			{
				B1_OUT = 1;
				SSD1306_GotoXY (60, 20);
				SSD1306_Puts ("LED4:ON ", &Font_7x10, SSD1306_COLOR_WHITE);
				SSD1306_UpdateScreen();
			}
			if(strcmp(data[1],"LED4_OFF") == 0 || strcmp(data[2],"LED4_OFF") == 0 || strcmp(data[3],"LED4_OFF") == 0 
			|| strcmp(data[4],"LED4_OFF") == 0 || strcmp(data[5],"LED4_OFF") == 0 || strcmp(data[6],"LED4_OFF") == 0 )
			{
				B1_OUT = 0;
				SSD1306_GotoXY (60, 20);
				SSD1306_Puts ("LED4:OFF", &Font_7x10, SSD1306_COLOR_WHITE);							
				SSD1306_UpdateScreen();
			}
			// LED 5
			if(strcmp(data[1],"LED5_ON") == 0 || strcmp(data[2],"LED5_ON") == 0 || strcmp(data[3],"LED5_ON") == 0 
			|| strcmp(data[4],"LED5_ON") == 0 || strcmp(data[5],"LED5_ON") == 0 || strcmp(data[6],"LED5_ON") == 0 )
			{
				B1_OUT = 1;
				SSD1306_GotoXY (60, 30);
				SSD1306_Puts ("LED5:ON ", &Font_7x10, SSD1306_COLOR_WHITE);							
				SSD1306_UpdateScreen();
			}
			if(strcmp(data[1],"LED5_OFF") == 0 || strcmp(data[2],"LED5_OFF") == 0 || strcmp(data[3],"LED5_OFF") == 0 
			|| strcmp(data[4],"LED5_OFF") == 0 || strcmp(data[5],"LED5_OFF") == 0 || strcmp(data[6],"LED5_OFF") == 0 )
			{
				B1_OUT = 0;
				SSD1306_GotoXY (60, 30);
				SSD1306_Puts ("LED5:OFF", &Font_7x10, SSD1306_COLOR_WHITE);							
				SSD1306_UpdateScreen();	
			}
			// LED 6
			if(strcmp(data[1],"LED6_ON") == 0 || strcmp(data[2],"LED6_ON") == 0 || strcmp(data[3],"LED6_ON") == 0 
			|| strcmp(data[4],"LED6_ON") == 0 || strcmp(data[5],"LED6_ON") == 0 || strcmp(data[6],"LED6_ON") == 0 )
			{
				B1_OUT = 1;
				SSD1306_GotoXY (60, 40);
				SSD1306_Puts ("LED6:ON ", &Font_7x10, SSD1306_COLOR_WHITE);						
				SSD1306_UpdateScreen();
			}
			if(strcmp(data[1],"LED6_OFF") == 0 || strcmp(data[2],"LED6_OFF") == 0 || strcmp(data[3],"LED6_OFF") == 0 
			|| strcmp(data[4],"LED6_OFF") == 0 || strcmp(data[5],"LED6_OFF") == 0 || strcmp(data[6],"LED6_OFF") == 0 )
			{
				B1_OUT = 0;
				SSD1306_GotoXY (60, 40);
				SSD1306_Puts ("LED6:OFF", &Font_7x10, SSD1306_COLOR_WHITE);		
				SSD1306_UpdateScreen();							
			}
		}
	}
}
void EXTILine13_Config(void)
{
  EXTI_InitTypeDef   EXTI_InitStructure;
  NVIC_InitTypeDef   NVIC_InitStructure;
  /* Enable SYSCFG clock */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);

  GPIO_Config(GPIOC, 
							GPIO_Pin_13, 
							GPIO_Mode_IN,
							GPIO_OType_PP,
							GPIO_PuPd_NOPULL,
							GPIO_Speed_25MHz);

  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOC, EXTI_PinSource13);

  EXTI_InitStructure.EXTI_Line = EXTI_Line13;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

  NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x04;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x04;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}
void ADC_Config (void)
{
	RCC_AHB1PeriphClockCmd (RCC_AHB1Periph_DMA2, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);

	ADC_InitTypeDef ADC_InitStructure;
	ADC_CommonInitTypeDef ADC_CommonInitStructure;
	DMA_InitTypeDef  DMA_InitStructure;
//	NVIC_InitTypeDef   NVIC_InitStructure;
	
	DMA_DeInit(DMA2_Stream0);
	DMA_InitStructure.DMA_Channel = DMA_Channel_0;  
  DMA_InitStructure.DMA_PeripheralBaseAddr = (uint32_t)0x4001204C;
  DMA_InitStructure.DMA_Memory0BaseAddr = (uint32_t)&value_adc;
  DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralToMemory;
  DMA_InitStructure.DMA_BufferSize = 1;
  DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
  DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
  DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
  DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
  DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;
  DMA_InitStructure.DMA_Priority = DMA_Priority_High;
  DMA_InitStructure.DMA_FIFOMode = DMA_FIFOMode_Disable;         
  DMA_InitStructure.DMA_FIFOThreshold = DMA_FIFOThreshold_HalfFull;
  DMA_InitStructure.DMA_MemoryBurst = DMA_MemoryBurst_Single;
  DMA_InitStructure.DMA_PeripheralBurst = DMA_PeripheralBurst_Single;
  DMA_Init(DMA2_Stream0, &DMA_InitStructure);
  DMA_Cmd(DMA2_Stream0, ENABLE);
	
	GPIO_Config(GPIOA, 
							GPIO_Pin_3, 
							GPIO_Mode_AN,
							GPIO_OType_PP,
							GPIO_PuPd_NOPULL,
							GPIO_Speed_25MHz);
	
	ADC_CommonInitStructure.ADC_Mode = ADC_Mode_Independent;
  ADC_CommonInitStructure.ADC_Prescaler = ADC_Prescaler_Div2;
  ADC_CommonInitStructure.ADC_DMAAccessMode = ADC_DMAAccessMode_Disabled;
  ADC_CommonInitStructure.ADC_TwoSamplingDelay = ADC_TwoSamplingDelay_10Cycles;
  ADC_CommonInit(&ADC_CommonInitStructure);
	
	ADC_InitStructure.ADC_ScanConvMode = DISABLE;
	ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
	ADC_InitStructure.ADC_NbrOfConversion = 1;
	ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConvEdge_None;
	ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
	ADC_InitStructure.ADC_Resolution = ADC_Resolution_12b;
	ADC_Init(ADC1, &ADC_InitStructure);

//	NVIC_PriorityGroupConfig  (NVIC_PriorityGroup_0);
//  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x02;
//  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x03;
//  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
//	NVIC_InitStructure.NVIC_IRQChannel = DMA2_Stream0_IRQn;
//  NVIC_Init(&NVIC_InitStructure);
	
	ADC_Cmd(ADC1, ENABLE);
	ADC_DMARequestAfterLastTransferCmd(ADC1, ENABLE);
  ADC_DMACmd(ADC1, ENABLE);
	ADC_SoftwareStartConv(ADC1);
}

void IWDG_Config(void)
{
	IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);// mo khoa timer 12bit
  IWDG_SetPrescaler(IWDG_Prescaler_256);
  /* 
		time_out = (IWDG_Prescaler_256 * IWDG_SetReload(312))/ f_lsi;
						 = (256 *312) / 32768 = 2.43 s
				5s	 = (256*X)/32768 => (5 x 32768)/256
				 =>X = 640	
  */   			
	IWDG_SetReload(640);
  /* Reload IWDG counter */
  IWDG_ReloadCounter();

  IWDG_Enable();
}
uint16_t Read_ADC1(u8 channel)
{
	ADC_RegularChannelConfig(ADC1, channel, 1, ADC_SampleTime_3Cycles);
	ADC_SoftwareStartConv(ADC1);
	while (ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC) == SET);
	return ADC_GetConversionValue(ADC1);
}
void EXTI15_10_IRQHandler (void)
{
	if(EXTI_GetITStatus(EXTI_Line13))
  {
		LED3 = 1;
		delay_ms(100);
		LED3 = 0;
		delay_ms(100);
    /* Clear the EXTI line 13 pending bit */
    EXTI_ClearITPendingBit(EXTI_Line13);
  }
}













