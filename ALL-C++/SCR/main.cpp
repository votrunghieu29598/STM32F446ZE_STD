#ifdef __cplusplus
 extern "C" {
#endif
	 
#include "stm32f4xx.h"                  // Device header
#include "main.h"
using namespace std;
	 
#define BT1 		C13_IN
#define LED1 		B0_OUT
#define LED2 		B7_OUT	
#define LED3 		B14_OUT	

#define BT1 		C13_IN
#define LED1 		B0_OUT
#define LED2 		B7_OUT	
#define LED3 		B14_OUT	

void EXTILine13_Config(void);
void ADC_Config (void);
void IWDG_Config(void);
void I2C1_Nvic(void);
void DMA1I2C_Config (void);
uint16_t Read_ADC1(u8 channel);
__IO uint16_t value_adc;
uint32_t SSD1306_Buffer;

char c[20];
int main() {
	GPIO_Config(GPIOB, 
							GPIO_Pin_0 |  GPIO_Pin_7 |  GPIO_Pin_14, 
							GPIO_Mode_OUT,
							GPIO_OType_PP,
							GPIO_PuPd_NOPULL,
							GPIO_Speed_25MHz);
	GPIO_Config(GPIOE, 
							GPIO_Pin_0, 
							GPIO_Mode_IN,
							GPIO_OType_PP,
							GPIO_PuPd_NOPULL,
							GPIO_Speed_25MHz);
	SysTick_Configuration();
	USART_Initstruct(USART2,
									 USART2_Pin2,	
									 USART_Buadrate_9600, 
								 	 USART_HardwareFlowControl_None, 
								 	 USART_Mode_Rx | USART_Mode_Tx, 
									 USART_Parity_No, 
									 USART_StopBits_1, 
									 USART_WordLength_8b);
	SSD1306_Init();
	DMA1I2C_Config();
	I2C1_Nvic();
	EXTILine13_Config();
	ADC_Config();
	IWDG_Config();
							// cot, hang
	SSD1306_GotoXY (0,0);
	SSD1306_Puts ("HELLO STM32F446ZE ", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_GotoXY (5, 30);
	SSD1306_Puts ("HELLO WORLD", &Font_11x18, SSD1306_COLOR_WHITE);
	SSD1306_UpdateScreen();
	
	delay_ms(2000);
	SSD1306_Clear();
	SSD1306_GotoXY (0,0);
	SSD1306_Puts ("HELLO STM32F446ZE", &Font_7x10, SSD1306_COLOR_WHITE);
	SSD1306_GotoXY (0,10);
	SSD1306_Puts (":) => :) => :)", &Font_7x10, SSD1306_COLOR_WHITE);
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
	while(1){
//		value_adc = Read_ADC1(ADC_Channel_3);
//		sprintf(c,"Val_ADC:%d     ",value_adc);
//		SSD1306_GotoXY (0, 50);
//		SSD1306_Puts (c, &Font_7x10, SSD1306_COLOR_WHITE);
//		SSD1306_UpdateScreen();

		delay_ms(100);
		IWDG_ReloadCounter(); 
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
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
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
  DMA_InitStructure.DMA_PeripheralBaseAddr =(uint32_t)(&(ADC1->DR)); //(uint32_t)0x4001204C;
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
  ADC_CommonInitStructure.ADC_TwoSamplingDelay = ADC_TwoSamplingDelay_15Cycles;
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
			t_out = (IWDG_Prescaler_256 * IWDG_SetReload(312))/ f_lsi;
						= (256 *312) / 32768 = 2.43 s
  */   			
	IWDG_SetReload(400);
  /* Reload IWDG counter */
  IWDG_ReloadCounter();

  IWDG_Enable();
}
uint16_t Read_ADC1(u8 channel)
{
	ADC_RegularChannelConfig(ADC1, channel, 1, ADC_SampleTime_480Cycles);
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
void DMA1I2C_Config (void)
{
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_DMA1, ENABLE);
	DMA_InitTypeDef DMA_InitStructure;
  DMA_DeInit(DMA1_Stream6);
  DMA_Cmd(DMA1_Stream6, DISABLE);
	DMA_StructInit(&DMA_InitStructure);                                // Load defaults
	
	DMA_InitStructure.DMA_Channel = DMA_Channel_1;
	DMA_InitStructure.DMA_PeripheralBaseAddr = (uint32_t)(&(I2C1->DR)); // I2C3 data register address
	DMA_InitStructure.DMA_Memory0BaseAddr = (uint32_t) c;   // Display buffer address
	DMA_InitStructure.DMA_DIR = DMA_DIR_MemoryToPeripheral;             // DMA from mem to periph
	DMA_InitStructure.DMA_BufferSize = 10;                            // Is set later in transmit function
	DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;    // Do not increment peripheral address
	DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;             // Do increment memory address
	DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
	DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
	DMA_InitStructure.DMA_Mode = DMA_Mode_Normal;                       // DMA one shot, no circular.
	DMA_InitStructure.DMA_Priority = DMA_Priority_Medium;               // Tweak if interfering with other dma actions
	DMA_InitStructure.DMA_FIFOMode = DMA_FIFOMode_Disable;
	DMA_InitStructure.DMA_FIFOThreshold = DMA_FIFOThreshold_HalfFull;
	DMA_InitStructure.DMA_MemoryBurst = DMA_MemoryBurst_Single;
	DMA_InitStructure.DMA_PeripheralBurst = DMA_PeripheralBurst_Single;
	DMA_Init(DMA1_Stream6, &DMA_InitStructure);
	DMA_Cmd(DMA1_Stream6, ENABLE);
	I2C_DMACmd  (I2C1, ENABLE);
	I2C_DMALastTransferCmd  (I2C1, ENABLE);
}
void I2C1_Nvic(void)
{
	
	NVIC_InitTypeDef NVIC_InitStructure;
	
	NVIC_InitStructure.NVIC_IRQChannel = I2C1_ER_IRQn;
	NVIC_PriorityGroupConfig  (NVIC_PriorityGroup_4);
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x03;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x03;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
	I2C_ITConfig  (I2C1, I2C_IT_ERR, ENABLE);
}
void I2C1_ER_IRQHandler (void)
{
	if(I2C_GetITStatus  (I2C1, I2C_IT_BERR) == RESET)
	{
		I2C_Stop(I2C1,ENABLE);
		I2C_ClearITPendingBit  (I2C1, I2C_IT_PECERR);
	}
}
#ifdef __cplusplus
}
#endif




