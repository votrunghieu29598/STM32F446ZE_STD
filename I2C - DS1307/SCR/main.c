#include "stm32f4xx.h"                  // Device header
#include "delay.h"
#include "stdio.h"
#include "i2c.h"
#include "usart2.h"
#include "i2c_lcd.h"
#include "i2c_ds1307.h"
void GPIO_Config (void){
	RCC_AHB1PeriphClockCmd  (RCC_AHB1Periph_GPIOB, ENABLE);
	
	GPIO_InitTypeDef GPIO_Initsrtruct;
	GPIO_Initsrtruct.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Initsrtruct.GPIO_OType = GPIO_OType_PP;
	GPIO_Initsrtruct.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_7 | GPIO_Pin_14  ;
	GPIO_Initsrtruct.GPIO_PuPd = GPIO_PuPd_NOPULL;
	GPIO_Initsrtruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init (GPIOB, &GPIO_Initsrtruct);
	GPIO_WriteBit(GPIOB, GPIO_Pin_0, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_7, Bit_SET);
	GPIO_WriteBit(GPIOB, GPIO_Pin_14, Bit_SET);
}
u8 add,i[8],temp;
u8 gio=0,phut=0,giay=0,thu=0,ngay=0,thang=0,nam=0;
uint8_t data[7];
int main(){
	GPIO_Config();
	Timer6_Delay();
	USART2_Initstruct();
	I2C_Config();
//	I2C_Scan_ADD();
//	Lcd_Init();
	DS1307_Init();
	delay_ms(1000);
	printf("Heloo\n");
//	RTC_SetDateTime(3,38,12,3,28,12,21);
	while(1){
//		Lcd_clear();
//		Lcd_Set_Cursor(1,1);
//		Lcd_Write_String("STM32   ");
//		Lcd_Set_Cursor(2,1);
//		Lcd_Write_String("lcd1602");
//		delay_ms(1000);
//		I2C_Write_Data(DS1307_I2C_ADDR,DS1307_MONTH,0x08);
//		temp = RTC_Bin2Bcd(3);
//		I2C_Write_Data(DS1307_I2C_ADDR,DS1307_MONTH,temp);
		
//		RTC_GetDateTime(&gio,&phut,&giay,&thu,&ngay,&thang,&nam);
//		
//		printf("%d-%d-%d \t %d %d/%d/%d \r\n",gio,phut,giay,thu,ngay,thang,nam);
//		delay_ms(500);
//		giay = I2C_Read_Data(DS1307_I2C_ADDR,DS1307_SECONDS);
//		i[0] = RTC_Bcd2Bin(giay);
//		printf("%d:",i[0]);
//		
//		phut = I2C_Read_Data(DS1307_I2C_ADDR,DS1307_MINUTES);
//		i[1] = RTC_Bcd2Bin(phut);
//		printf("%d:",i[1]);
//		
//		gio = I2C_Read_Data(DS1307_I2C_ADDR,DS1307_HOURS);
//		i[2] = RTC_Bcd2Bin(gio);
//		printf("%d\n",i[2]);
//		
//		thu = I2C_Read_Data(DS1307_I2C_ADDR,DS1307_DAY);
//		i[3] = RTC_Bcd2Bin(thu);
//		printf("%d/",i[3] );
//		
//		ngay = I2C_Read_Data(DS1307_I2C_ADDR,DS1307_DATE);
//		i[4] = RTC_Bcd2Bin(ngay);
//		printf("%d/",i[4]);
//		
//		thang = I2C_Read_Data(DS1307_I2C_ADDR,DS1307_MONTH);
//		i[5] = RTC_Bcd2Bin(thang);
//		printf("%d/",i[5]);
//		
//		nam = I2C_Read_Data(DS1307_I2C_ADDR,DS1307_YEAR);
//		i[6] = RTC_Bcd2Bin(nam);
//		printf("%d\n",i[6]);
		I2C_Read_MutiData(DS1307_I2C_ADDR,0x00,7,i);
		giay = RTC_Bcd2Bin(i[0]);
		phut = RTC_Bcd2Bin(i[1]);
		gio = RTC_Bcd2Bin(i[2]);
		thu = RTC_Bcd2Bin(i[3]);
		ngay = RTC_Bcd2Bin(i[4]);
		thang = RTC_Bcd2Bin(i[5]);
		nam = RTC_Bcd2Bin(i[6]);
		printf("%d-%d-%d \n %d/%d/%d/%d \n",gio,phut,giay,thu,ngay,thang,nam);
		delay_ms(1000);
	}
}


