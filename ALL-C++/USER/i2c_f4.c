#include "i2c_f4.h"
#include "stdio.h"
#include "f4_sys_tick.h"

void I2C_Initstruct (I2C_TypeDef* I2Cx, uint8_t I2C_Pin, uint32_t I2C_Clock ){
	uint8_t pin = I2C_Pin;
/* ------------------------- Config GPIO I2C1 ------------------------- */
	if(I2Cx == I2C1 && I2C_Pin == pin){
		if(pin == I2C1_PinB67){			
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);

			GPIO_InitTypeDef GPIO_I2C;
			GPIO_I2C.GPIO_Mode = GPIO_Mode_AF;
			GPIO_I2C.GPIO_OType = GPIO_OType_OD;
			GPIO_I2C.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_7;
			GPIO_I2C.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_I2C.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOB, &GPIO_I2C);
			//
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource6, GPIO_AF_I2C1);
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource7, GPIO_AF_I2C1);
		}
		else if(pin == I2C1_PinB89){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
			
			GPIO_InitTypeDef GPIO_I2C;
			GPIO_I2C.GPIO_Mode = GPIO_Mode_AF;
			GPIO_I2C.GPIO_OType = GPIO_OType_OD;
			GPIO_I2C.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9;
			GPIO_I2C.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_I2C.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOB, &GPIO_I2C);
			//
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource8, GPIO_AF_I2C1);
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource9, GPIO_AF_I2C1);
//			//bat clock B
//			RCC -> AHB1ENR |= 1 << 1;
//			//bat clock I2C1
//			RCC -> APB1ENR |= 1 << 21;
//			// config GPIO_B
//			GPIOB -> MODER |= 2 << 16 | 2 << 18;
//			GPIOB -> OTYPER |= 1 << 8 | 1 << 9; 
//			GPIOB -> OSPEEDR |= 1 << 16 | 1 << 18;
//			GPIOB -> PUPDR |= 1 << 16 | 1 << 18; 
//			//lien ket chan GPIO_B vs I2C1
//			GPIOB -> AFR[1] |= 4 << 0;
//			GPIOB -> AFR[1] |= 4 << 4;
		}
		else if(pin == I2C1_PinB69){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);

			GPIO_InitTypeDef GPIO_I2C;
			GPIO_I2C.GPIO_Mode = GPIO_Mode_AF;
			GPIO_I2C.GPIO_OType = GPIO_OType_OD;
			GPIO_I2C.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_9;
			GPIO_I2C.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_I2C.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOB, &GPIO_I2C);
			//
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource6, GPIO_AF_I2C1);
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource9, GPIO_AF_I2C1);
			}
	}
/* ------------------------- Config GPIO I2C2 ------------------------- */
	else if(I2Cx == I2C2 && I2C_Pin == pin){
		if(pin == I2C2_PinB1011){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
			GPIO_InitTypeDef GPIO_I2C;
			GPIO_I2C.GPIO_Mode = GPIO_Mode_AF;
			GPIO_I2C.GPIO_OType = GPIO_OType_OD;
			GPIO_I2C.GPIO_Pin = GPIO_Pin_10 | GPIO_Pin_11;
			GPIO_I2C.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_I2C.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOB, &GPIO_I2C);
			//
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource10, GPIO_AF_I2C2);
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource11, GPIO_AF_I2C2);
		}
		else if(pin == I2C2_PinF01){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOF, ENABLE);
			GPIO_InitTypeDef GPIO_I2C;
			GPIO_I2C.GPIO_Mode = GPIO_Mode_AF;
			GPIO_I2C.GPIO_OType = GPIO_OType_OD;
			GPIO_I2C.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1;
			GPIO_I2C.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_I2C.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOF, &GPIO_I2C);
			//
			GPIO_PinAFConfig  (GPIOF, GPIO_PinSource0, GPIO_AF_I2C2);
			GPIO_PinAFConfig  (GPIOF, GPIO_PinSource1, GPIO_AF_I2C2);
		}else if(pin == I2C2_PinF45){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOF, ENABLE);
			GPIO_InitTypeDef GPIO_I2C;
			GPIO_I2C.GPIO_Mode = GPIO_Mode_AF;
			GPIO_I2C.GPIO_OType = GPIO_OType_OD;
			GPIO_I2C.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1;
			GPIO_I2C.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_I2C.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOF, &GPIO_I2C);
			//
			GPIO_PinAFConfig  (GPIOF, GPIO_PinSource0, GPIO_AF_I2C2);
			GPIO_PinAFConfig  (GPIOF, GPIO_PinSource1, GPIO_AF_I2C2);
		}
	}
/* ------------------------- Config GPIO I2C3 ------------------------- */
	else if(I2Cx == I2C3 && I2C_Pin == pin){
		if(pin == I2C3_PinAB84){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOA, ENABLE);
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
			GPIO_InitTypeDef GPIO_I2C;
			
			GPIO_I2C.GPIO_Mode = GPIO_Mode_AF;
			GPIO_I2C.GPIO_OType = GPIO_OType_OD;
			GPIO_I2C.GPIO_Pin = GPIO_Pin_8 ;
			GPIO_I2C.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_I2C.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOA, &GPIO_I2C);
			
			GPIO_I2C.GPIO_Mode = GPIO_Mode_AF;
			GPIO_I2C.GPIO_OType = GPIO_OType_OD;
			GPIO_I2C.GPIO_Pin = GPIO_Pin_4 ;
			GPIO_I2C.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_I2C.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOB, &GPIO_I2C);
			
			GPIO_PinAFConfig  (GPIOA, GPIO_PinSource8, GPIO_AF_I2C3);
			GPIO_PinAFConfig  (GPIOB, GPIO_PinSource4, GPIO_AF_I2C3);
		}
		else if(pin == I2C3_PinAC89){
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOA, ENABLE);
			RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOC, ENABLE);
			GPIO_InitTypeDef GPIO_I2C;
			
			GPIO_I2C.GPIO_Mode = GPIO_Mode_AF;
			GPIO_I2C.GPIO_OType = GPIO_OType_OD;
			GPIO_I2C.GPIO_Pin = GPIO_Pin_8 ;
			GPIO_I2C.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_I2C.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOA, &GPIO_I2C);
			
			GPIO_I2C.GPIO_Mode = GPIO_Mode_AF;
			GPIO_I2C.GPIO_OType = GPIO_OType_OD;
			GPIO_I2C.GPIO_Pin = GPIO_Pin_9 ;
			GPIO_I2C.GPIO_PuPd = GPIO_PuPd_UP;
			GPIO_I2C.GPIO_Speed = GPIO_Speed_50MHz;
			GPIO_Init (GPIOC, &GPIO_I2C);
			
			GPIO_PinAFConfig  (GPIOA, GPIO_PinSource8, GPIO_AF_I2C3);
			GPIO_PinAFConfig  (GPIOC, GPIO_PinSource9, GPIO_AF_I2C3);
		}
/* ------------------------- Config I2CX ------------------------- */		
	}
	if(I2Cx == I2C1){
		RCC_APB1PeriphClockCmd  (RCC_APB1Periph_I2C1, ENABLE);
	}else if(I2Cx == I2C2){
		RCC_APB1PeriphClockCmd  (RCC_APB1Periph_I2C2, ENABLE);
	}else if(I2Cx == I2C3){
		RCC_APB1PeriphClockCmd  (RCC_APB1Periph_I2C3, ENABLE);
	}
	I2C_DeInit(I2Cx);
	I2C_InitTypeDef I2CX_Config;
	
	I2CX_Config.I2C_Ack = I2C_Ack_Enable;
	I2CX_Config.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
	I2CX_Config.I2C_ClockSpeed = I2C_Clock;
	I2CX_Config.I2C_DutyCycle = I2C_DutyCycle_2;
	I2CX_Config.I2C_Mode = I2C_Mode_I2C;
	I2CX_Config.I2C_OwnAddress1 = Master_addr;
	I2C_Init  (I2Cx, &I2CX_Config);
	I2C_Cmd  (I2Cx, ENABLE);
	I2C_SoftwareResetCmd  (I2Cx, DISABLE);
}
void I2C_Scan_ADD (I2C_TypeDef* I2Cx,uint8_t add){
	for(add = 1; add < 255; add++){
			I2C_GenerateSTART(I2Cx, ENABLE);
			while(!I2C_CheckEvent(I2Cx, I2C_EVENT_MASTER_MODE_SELECT));
			I2C_Send7bitAddress (I2Cx,add, I2C_Direction_Transmitter);
			I2C_GenerateSTOP (I2Cx, ENABLE);
			delay_us(100);
				if(I2C_GetFlagStatus  (I2Cx,I2C_FLAG_ADDR))
					{
						printf("ADD:0x%X \n",add);
					}
	}
}
void I2C_Start (I2C_TypeDef* I2Cx, FunctionalState  NewState){
	I2C_AcknowledgeConfig  (I2Cx, NewState);
	I2C_GenerateSTART(I2Cx, NewState);
	while(!I2C_CheckEvent(I2Cx, I2C_EVENT_MASTER_MODE_SELECT));//EV5
}
void I2C_Stop (I2C_TypeDef* I2Cx, FunctionalState  NewState){
	while(I2C_CheckEvent(I2Cx, I2C_EVENT_MASTER_BYTE_TRANSMITTED));//EV8_2
	I2C_GenerateSTOP  (I2Cx, NewState);
}
void I2C_Send_ADD (I2C_TypeDef* I2Cx,uint8_t add, uint8_t Direction){
	if(Direction == Send){
		I2C_Send7bitAddress  (I2Cx, add, I2C_Direction_Transmitter);
		while(!I2C_CheckEvent  (I2Cx,I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));//EV6
	}
	else if (Direction == Read){
		I2C_Send7bitAddress  (I2Cx, add, I2C_Direction_Receiver);
		while(!I2C_CheckEvent  (I2Cx,I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));//EV6
	}
}
void I2C_Write(I2C_TypeDef* I2Cx,uint8_t data){
	I2C_SendData(I2Cx, data);
	while(!I2C_CheckEvent(I2Cx, I2C_EVENT_MASTER_BYTE_TRANSMITTING));//EV8
	while(!I2C_GetFlagStatus(I2Cx, I2C_FLAG_TXE));
}
void I2C_Write_Data(I2C_TypeDef* I2Cx, uint8_t add, uint8_t reg, uint8_t data){
	I2C_Start(I2Cx,ENABLE);
	I2C_Send_ADD(I2Cx,add,Send);
	I2C_Write(I2Cx,reg);
//	I2C_Stop(I2Cx,ENABLE);
	
	I2C_Start(I2Cx,ENABLE);
	I2C_Send_ADD(I2Cx,add,Send);
	I2C_Write(I2Cx,data);
	I2C_Stop(I2Cx,ENABLE);
}
void I2C_Write_MutiData(I2C_TypeDef* I2Cx, uint8_t add, uint8_t reg,uint8_t len, uint8_t* data){
	I2C_Start(I2Cx,ENABLE);
	I2C_Send_ADD(I2Cx,add,Send);
	I2C_Write(I2Cx,reg);
//	I2C_Stop(I2Cx,ENABLE);
	I2C_Start(I2Cx,ENABLE);
	I2C_Send_ADD(I2Cx,add,Send);
	while(len--){
		I2C_Write(I2Cx,*data++);
		}
	I2C_Stop(I2Cx,ENABLE);
}
uint8_t I2C_Read (I2C_TypeDef* I2Cx,uint8_t ack){
	uint8_t data;
	if(ack == Read ){
			I2C_AcknowledgeConfig  (I2Cx, DISABLE);
		}
	else if (ack == Send){
			I2C_AcknowledgeConfig  (I2Cx, ENABLE);
		}
	while(!I2C_CheckEvent  (I2Cx,I2C_EVENT_MASTER_BYTE_RECEIVED));
	while(!I2C_GetFlagStatus  (I2Cx, I2C_FLAG_RXNE));
	data = I2C_ReceiveData  (I2Cx);
	return data;
}
uint8_t I2C_Read_Data(I2C_TypeDef* I2Cx, uint8_t add, uint8_t reg){
	u8 rec;
	I2C_Start(I2Cx,ENABLE);
	I2C_Send_ADD(I2Cx, add, Send);
	I2C_Write(I2Cx,reg);
//	I2C_Stop(I2Cx,ENABLE);
	
	I2C_Start(I2Cx,ENABLE);
	I2C_Send_ADD(I2Cx, add, Read);
	rec = I2C_Read(I2Cx, Read);
	I2C_Stop(I2Cx,ENABLE);
	return rec;
}
uint8_t I2C_Read_MutiData(I2C_TypeDef* I2Cx, uint8_t add, uint8_t reg, uint8_t len, uint8_t *data){
	I2C_Start(I2Cx,ENABLE);
	I2C_Send_ADD(I2Cx, add, Send);
	I2C_Write(I2Cx,reg);
//	I2C_Stop(I2Cx,ENABLE);
	I2C_Start(I2Cx,ENABLE);
	I2C_Send_ADD(I2Cx, add, Read);
	while(len--){
		if(!len){
			*data++ = I2C_Read(I2Cx, Read);// last byte master send Nack
		}
		else if (len){
			*data++ = I2C_Read(I2Cx, Send);
		}
	}
	I2C_Stop(I2Cx,ENABLE);
	return 0;
}
//printf("ADD:0x%X ",add);
uint8_t I2C_Check_Connected (I2C_TypeDef* I2Cx, uint8_t add,char* name){
	I2C_Start(I2Cx,ENABLE);
	I2C_Send_ADD(I2Cx,add,Send);
	I2C_Stop(I2Cx,ENABLE);
	
	if(!I2C_GetFlagStatus(I2Cx, I2C_FLAG_ADDR)){
		printf("ADD:0x%X %s-connected\n", add, name);
	}
	return 0;
}







