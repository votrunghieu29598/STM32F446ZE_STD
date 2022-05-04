#include "i2c_tcs34725.h"

void TCS34725_Write (I2C_TypeDef* I2Cx, uint8_t add_reg, uint8_t* data, uint8_t len){
		I2C_Write_MutiData(I2Cx, TCS34725_I2C_ADDR, add_reg | TCS34725_COMMAND_BIT, len, data);
}
void TCS34725_Read(I2C_TypeDef* I2Cx, uint8_t add_reg, uint8_t* data, uint8_t len){
		I2C_Read_MutiData(I2Cx, TCS34725_I2C_ADDR, add_reg | TCS34725_COMMAND_BIT, len, data);
}
unsigned char TCS34725_Init(I2C_TypeDef* I2Cx, I2C_Pintypedef TCS34725_pin, I2C_Clocktypedef I2C_Clock)
{
    unsigned char status[1] = {0};
    I2C_Initstruct(I2Cx, TCS34725_pin, I2C_Clock); 
    TCS34725_Read(I2Cx, TCS34725_ID, status, 1);
    return status[0];
}
void TCS34725_SetIntegrationTime(I2C_TypeDef* I2Cx, uint8_t time)
{
    unsigned char cmd = time;

    TCS34725_Write(I2Cx, TCS34725_ATIME, &cmd, 1);
}

void TCS34725_SetGain(I2C_TypeDef* I2Cx, uint8_t gain)
{
    unsigned char cmd = gain;

    TCS34725_Write(I2Cx,TCS34725_CONTROL, &cmd, 1);
}

void TCS34725_Setup(I2C_TypeDef* I2Cx)
{
    TCS34725_SetIntegrationTime(I2Cx, TCS34725_INTEGRATIONTIME_240MS);
    TCS34725_SetGain(I2Cx, TCS34725_GAIN_4X);
}
void TCS34725_Enable(I2C_TypeDef* I2Cx)
{
    unsigned char cmd = TCS34725_ENABLE_PON;

    TCS34725_Write(I2Cx, TCS34725_ENABLE, &cmd, 1);
    delay_ms(3);
    cmd = TCS34725_ENABLE_PON | TCS34725_ENABLE_AEN;
    TCS34725_Write(I2Cx, TCS34725_ENABLE, &cmd, 1);
}
void TCS34725_Disable(I2C_TypeDef* I2Cx)
{
    unsigned char cmd = 0x00;

    TCS34725_Read(I2Cx, TCS34725_ENABLE, &cmd, 1);
    cmd = cmd & ~(TCS34725_ENABLE_PON | TCS34725_ENABLE_AEN);
    TCS34725_Write(I2Cx, TCS34725_ENABLE, &cmd, 1);
}
uint16_t TCS34725_GetChannelData(I2C_TypeDef* I2Cx, unsigned char reg)
{
    unsigned char tmp[2] = {0,0};
    uint16_t data = 0;

    TCS34725_Read(I2Cx, reg, tmp, 2);
    data = ((uint16_t)tmp[1] << 8) | tmp[0];

    return data;
}
uint8_t TCS34725_GetRawData(I2C_TypeDef* I2Cx, uint16_t *r, uint16_t *g, uint16_t *b, uint16_t *c)
{
    unsigned char status[1] = {0};

    status[0] = TCS34725_STATUS_AVALID;

    TCS34725_Read(I2Cx, TCS34725_STATUS, status, 1);

    if(status[0] & TCS34725_STATUS_AVALID)
    {
        *c = TCS34725_GetChannelData(I2Cx, TCS34725_CDATAL);  
        *r = TCS34725_GetChannelData(I2Cx, TCS34725_RDATAL);  
        *g = TCS34725_GetChannelData(I2Cx, TCS34725_GDATAL);  
        *b = TCS34725_GetChannelData(I2Cx, TCS34725_BDATAL);
        return 1;
    }
    return 0;
}








