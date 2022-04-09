#include "gpio_f4.h"
void GPIO_Config (GPIO_TypeDef* GPIOx,
									uint16_t GPIO_PIN_X,
									GPIOMode_TypeDef GPIO_MODE,
									GPIOOType_TypeDef GPIO_OTYPE,
									GPIOPuPd_TypeDef GPIO_PUPD,
								  GPIOSpeed_TypeDef GPIO_SPEED)
{
	GPIO_InitTypeDef GPIO_Initsrtruct;
	// bat rcc
	if(GPIOx == GPIOA){RCC -> AHB1ENR |= (1 << 0);}
	else if(GPIOx == GPIOB){RCC -> AHB1ENR |= (1 << 1);}	
	else if(GPIOx == GPIOC){RCC -> AHB1ENR |= (1 << 2);}
	else if(GPIOx == GPIOD){RCC -> AHB1ENR |= (1 << 3);}
	else if(GPIOx == GPIOE){RCC -> AHB1ENR |= (1 << 4);}
	else if(GPIOx == GPIOF){RCC -> AHB1ENR |= (1 << 5);}
	else if(GPIOx == GPIOG){RCC -> AHB1ENR |= (1 << 6);}	
	else if(GPIOx == GPIOH){RCC -> AHB1ENR |= (1 << 7);}
	
	GPIO_Initsrtruct.GPIO_Mode = GPIO_MODE;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OTYPE;
	GPIO_Initsrtruct.GPIO_Pin = GPIO_PIN_X;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PUPD;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_SPEED;
	GPIO_Init(GPIOx, &GPIO_Initsrtruct);	
}
