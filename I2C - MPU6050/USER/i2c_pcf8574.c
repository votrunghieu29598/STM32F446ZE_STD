#include "i2c_pcf8574.h"
void I2C_PCF8574_Write(uint8_t add,uint8_t IO){
	I2C_Write_Data(add,0x00,IO);
}
uint8_t I2C_Read_PCF8574 (uint8_t add, uint8_t reg){
	uint8_t temp;
	temp = I2C_Read_Data(add,reg);
	return temp;
}




