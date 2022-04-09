#include "stm32f4xx.h"                  // Device header
#include "i2c_ds1307.h"
#include "delay.h"
#include "stdio.h"
#include "i2c.h"
void DS1307_Init(void)
{
	I2C_Config();
}

uint8_t RTC_Bcd2Bin(uint8_t bcd) {
	
//	return 10 * (bcd >> 4)+(bcd & 0x0F);
		uint8_t dec = 10 * (bcd >> 4);
		dec += bcd & 0x0F;
		return dec;
}

uint8_t RTC_Bin2Bcd(uint8_t bin) {
		
//	return (bin / 10) << 4 | (bin % 10);
		uint8_t low = 0;
		uint8_t high = 0;
		
		/* High nibble */
		high = bin / 10;
		/* Low nibble */
		low = bin - (high * 10);
		
		/* Return */
		return high << 4 | low;

}
uint8_t RTC_CheckMinMax(uint8_t val, uint8_t min, uint8_t max) {
	if (val < min) {
		return min;
	} else if (val > max) {
		return max;
	}
	return val;
}


void RTC_GetDateTime(uint8_t *gio,uint8_t *phut,uint8_t *giay,uint8_t *thu,uint8_t *ngay,uint8_t *thang,uint8_t *nam) {
	uint8_t data[7];	uint8_t res;	
//	res = IIC_ReadMulti( DS1307_I2C_ADDR, 0x00,7, data);//tu ADD reg=0x00
	res = I2C_Read_MutiData(DS1307_I2C_ADDR, 0x00, 7, data);
	if(res==0)
	{
	*giay = RTC_Bcd2Bin(data[0]);
	*phut = RTC_Bcd2Bin(data[1]);
	*gio = RTC_Bcd2Bin(data[2]);
	*thu = RTC_Bcd2Bin(data[3]);
	*ngay = RTC_Bcd2Bin(data[4]);
	*thang = RTC_Bcd2Bin(data[5]);
	*nam = RTC_Bcd2Bin(data[6]);
	}
	delay_ms(100);
}
void RTC_SetDateTime(uint8_t gio,uint8_t phut,uint8_t giay,uint8_t thu,uint8_t ngay,uint8_t thang,uint8_t nam) {
	uint8_t data[7];
	
	data[0] = RTC_Bin2Bcd(RTC_CheckMinMax(giay, 0, 59));
	data[1] = RTC_Bin2Bcd(RTC_CheckMinMax(phut, 0, 59));
	data[2] = RTC_Bin2Bcd(RTC_CheckMinMax(gio, 0, 23));
	data[3] = RTC_Bin2Bcd(RTC_CheckMinMax(thu, 1, 7));
	data[4] = RTC_Bin2Bcd(RTC_CheckMinMax(ngay, 1, 31));
	data[5] = RTC_Bin2Bcd(RTC_CheckMinMax(thang, 1, 12));
	data[6] = RTC_Bin2Bcd(RTC_CheckMinMax(nam, 0, 99));
	
//	IIC_WriteMulti( DS1307_I2C_ADDR, 0x00,7, data);
	I2C_Write_MutiData(DS1307_I2C_ADDR, 0x00, 7, data);
}













