#include "stm32f4xx.h"                  // Device header
#include "delay.h"
#include "stdio.h"
#include "i2c.h"
void I2C_Config (void){
	RCC_APB1PeriphClockCmd  (RCC_APB1Periph_I2C1, ENABLE);
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
	
	GPIO_InitTypeDef GPIO_I2C;
	I2C_InitTypeDef I2C_Config;
	
	GPIO_I2C.GPIO_Mode = GPIO_Mode_AF;
	GPIO_I2C.GPIO_OType = GPIO_OType_OD;
	GPIO_I2C.GPIO_Pin = SCL_Pin | SDA_Pin;
	GPIO_I2C.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_I2C.GPIO_Speed = GPIO_Speed_100MHz;
	GPIO_Init (GPIOB, &GPIO_I2C);
	//
	GPIO_PinAFConfig  (GPIOB, GPIO_PinSource8, GPIO_AF_I2C1);
	GPIO_PinAFConfig  (GPIOB, GPIO_PinSource9, GPIO_AF_I2C1);
	//
	I2C_Config.I2C_Ack = I2C_Ack_Enable;
	I2C_Config.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
	I2C_Config.I2C_ClockSpeed = 100000;
	I2C_Config.I2C_DutyCycle = I2C_DutyCycle_2;
	I2C_Config.I2C_Mode = I2C_Mode_I2C;
	I2C_Config.I2C_OwnAddress1 = 0x01;
	I2C_Init  (I2C_X, &I2C_Config);
	I2C_Cmd  (I2C_X, ENABLE);
	I2C_AcknowledgeConfig  (I2C_X, ENABLE);
}
void I2C_Scan_ADD (void){
	uint8_t add;
	for(add = 1; add < 255; add++){
			I2C_GenerateSTART(I2C_X, ENABLE);
			while(!I2C_CheckEvent(I2C_X, I2C_EVENT_MASTER_MODE_SELECT));
			I2C_Send7bitAddress (I2C_X,add, I2C_Direction_Transmitter);
			I2C_GenerateSTOP (I2C_X, ENABLE);
			delay_us(100);
				if(I2C_GetFlagStatus  (I2C_X,I2C_FLAG_ADDR))
					{
						printf("ADD:0x%X\n",add);
					}
	}
	
}
void I2C_Start (void){
	I2C_AcknowledgeConfig  (I2C_X, ENABLE);
	I2C_GenerateSTART(I2C_X, ENABLE);
	while(!I2C_CheckEvent(I2C_X, I2C_EVENT_MASTER_MODE_SELECT));
}
void I2C_Stop (void){
	I2C_GenerateSTOP  (I2C_X, ENABLE);
}
void I2C_Send_ADD (uint8_t add, uint8_t Direction){
	if(Direction ==  Send){
		I2C_Send7bitAddress  (I2C_X, add, I2C_Direction_Transmitter);
		while(!I2C_CheckEvent  (I2C_X,I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	}
	else if (Direction == Read){
		I2C_Send7bitAddress  (I2C_X, add, I2C_Direction_Receiver);
		while(!I2C_CheckEvent  (I2C_X,I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));
	}
}
void I2C_Write(uint8_t data){
	I2C_SendData(I2C_X, data);
	while(!I2C_CheckEvent(I2C_X, I2C_EVENT_MASTER_BYTE_TRANSMITTED));
}
void I2C_Write_Data(uint8_t add, uint8_t reg, uint8_t data){
	I2C_Start();
	I2C_Send_ADD(add,Send);
	I2C_Write(reg);
	I2C_Start();
	I2C_Send_ADD(add,Send);
	I2C_Write(data);
	I2C_Stop();
}
void I2C_Write_MutiData(uint8_t add, uint8_t reg,uint8_t len, uint8_t* data){
	I2C_Start();
	I2C_Send_ADD(add,Send);
	I2C_Write(reg);
	I2C_Start();
	I2C_Send_ADD(add,Send);
	while(len--){
		I2C_Write(*data++);
		}
	I2C_Stop();
}
uint8_t I2C_Read (uint8_t ack){
	uint8_t data;
	if(ack == Read ){
			I2C_AcknowledgeConfig  (I2C_X, DISABLE);
		}
	else if (ack == Send){
			I2C_AcknowledgeConfig  (I2C_X, ENABLE);
		}
	while(!I2C_CheckEvent  (I2C_X,I2C_EVENT_MASTER_BYTE_RECEIVED));
	while(!I2C_GetFlagStatus  (I2C_X, I2C_FLAG_RXNE));
	data = I2C_ReceiveData  (I2C_X);
	return data;
}
uint8_t I2C_Read_Data(uint8_t add, uint8_t reg){
	u8 rec;
	I2C_Start();
	I2C_Send_ADD(add, Send);
	I2C_Write(reg);
	I2C_Stop();
	
	I2C_Start();
	I2C_Send_ADD(add, Read);
	rec = I2C_Read(Read);
	return rec;
}
uint8_t I2C_Read_MutiData(uint8_t add, uint8_t reg, uint8_t len, uint8_t *data){
	I2C_Start();
	I2C_Send_ADD(add, Send);
	I2C_Write(reg);
	I2C_Stop();
	I2C_Start();
	I2C_Send_ADD(add, Read);
	while(len--){
		if(!len){
			*data++ = I2C_Read(Read);// last byte master send Nack
		}
		else if (len){
			*data++ = I2C_Read(Send);
		}
	}
	I2C_Stop();
	return 0;
}


















