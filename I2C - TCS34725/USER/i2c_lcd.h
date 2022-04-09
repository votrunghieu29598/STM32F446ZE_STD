#ifndef _I2C_LCD_H_
#define _I2C_LCD_H_
#include <stdint.h>
#include "stm32f4xx.h"                  // Device header
/**************************************************************/
void Lcd_Write_Cmd (uint8_t cmd);
void Lcd_Write_char (char data);
void Lcd_Init (void);
void Lcd_Write_String (char *string);
void Lcd_Set_Cursor (int row,int col);
void Lcd_clear (void);
void Lcd_Return_home (void);
void Lcd_Back_Light (void);
void Lcd_NoBack_Light (void);
void Lcd_Move_Right (void);
void Lcd_Move_left (void);
/**************************************************************/
#endif










