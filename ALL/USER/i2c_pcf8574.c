
#include "i2c_pcf8574.h"
void PCF8574_Init (I2C_TypeDef* I2Cx, I2C_Pintypedef PCF8574_pin, I2C_Clocktypedef I2C_Clock){
	I2C_Initstruct(I2Cx, PCF8574_pin, I2C_Clock);
}
void PCF8574_Write(I2C_TypeDef* I2Cx, uint8_t add,PCF8574_PinIOtypedef IO){
	I2C_Write_Data(I2Cx, add,IO,IO);
}
uint8_t PCF8574_Read(I2C_TypeDef* I2Cx, uint8_t add, uint8_t reg){
	uint8_t temp;
	temp = I2C_Read_Data(I2Cx, add,reg);
	return temp;
}




