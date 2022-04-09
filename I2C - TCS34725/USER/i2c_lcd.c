#include "i2c_lcd.h"
#include "delay.h"
#include "stdio.h"
#include "i2c.h"
#define ADDR_LCD  0x4E
void Lcd_Write_Cmd (uint8_t cmd){
	char data_u, data_l;
	uint8_t data_t[4];
	data_u = (cmd&0xf0);
	data_l = ((cmd<<4)&0xf0);
	data_t[0] = data_u|0x0C;  //en=1, rs=0
	data_t[1] = data_u|0x08;  //en=0, rs=0
	data_t[2] = data_l|0x0C;  //en=1, rs=0
	data_t[3] = data_l|0x08;  //en=0, rs=0
	I2C_Write_MutiData(ADDR_LCD, 0x00, 4,data_t);
}
void Lcd_Write_char (char data){
	char data_u, data_l;
	uint8_t data_t[4];
	data_u = (data&0xf0);
	data_l = ((data<<4)&0xf0);
	data_t[0] = data_u|0x0D;  //en=1, rs=1
	data_t[1] = data_u|0x09;  //en=0, rs=1
	data_t[2] = data_l|0x0D;  //en=1, rs=1
	data_t[3] = data_l|0x09;  //en=0, rs=1
	I2C_Write_MutiData(ADDR_LCD, 0x00, 4,data_t);
}
void Lcd_Init (void){
	delay_ms(100);//delay wait vcc 4.5v
	Lcd_Write_Cmd(0x30);
	delay_ms(5);// delay wait 4.1 ms
	Lcd_Write_Cmd(0x30);
	delay_ms(5);//  delay wait 100 us
	Lcd_Write_Cmd(0x30);
	
	delay_ms(5);
	Lcd_Write_Cmd(0x20);//set 4 bit mode
	delay_ms(5);
	Lcd_Write_Cmd(0x28);//function set DL = 4bit, N = 2line, font 5x8
	delay_ms(5);
	Lcd_Write_Cmd(0x08);// Display ON/OFF Control
	delay_ms(5);
	Lcd_Write_Cmd(0x01);// clear display
	delay_ms(5);
	Lcd_Write_Cmd(0x06);//Entry mode set
	delay_ms(5);
	Lcd_Write_Cmd(0x0C);// Display ON/OFF Controls
	delay_ms(5);
}
void Lcd_Write_String (char *string){
	while(*string) Lcd_Write_char(*string++);
}
void Lcd_Set_Cursor (int row,int col){
	u8 addr;
	if (row == 1 ){
			addr = 0x80 + col -1;
	}else{
			addr = 0xc0 + col -1;	
	}
	Lcd_Write_Cmd(addr);
}
void Lcd_clear (void){
	// xoa dong 1
	Lcd_Write_Cmd (0x00);
	delay_ms(2);
	// xoa dong 2
	Lcd_Write_Cmd (0x01);
	delay_ms(2);
}
void Lcd_Return_home (void){
	Lcd_Write_Cmd (0x02);
	delay_ms(5);
}
void Lcd_Back_Light (void){//err
	Lcd_Write_Cmd(0x08);
}
void Lcd_NoBack_Light (void){//err
	Lcd_Write_Cmd(0x00);
}
void Lcd_Move_Right (void){
	Lcd_Write_Cmd(0x1C);
}
void Lcd_Move_left (void){
	Lcd_Write_Cmd(0x18);
}






