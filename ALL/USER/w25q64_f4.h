#ifndef _W25Q64_F4_H_
#define _W25Q64_F4_H_
#include <stdint.h>
#include "stm32f4xx.h"                  // Device header
#include "spi_f4.h"
#include "f4_sys_tick.h"
#define Write_Enable 										0x06
#define Write_Disable 									0x04
#define Read_Status_Register_1  				0x50 
#define Read_Status_Register_2 					0x35 
#define Write_Status_Register 					0x01 
#define Page_Program  									0x02 
#define Quad_Page_Program 							0x32
#define Block_Erase_64KB 								0xD8 
#define Block_Erase_32KB 								0x52 
#define Sector_Erase_4KB 								0x20 
#define Chip_Erase C7h/									0x60
#define Erase_Suspend  									0x75
#define Erase_Resume 										0x7A
#define Power_down 											0xB9
#define Read_Data												0x03
//#define High_Performance Mode A3h dummy dummy dummy
#define Continuous_Read_Mode_Reset (4) FFh FFh
#define Release_Power_down 

#define Device_ID6 90h
#define Read_Unique_ID 4Bh 
#define JEDEC_D 9Fh
/*******************************************************************/
void W25Q64_Init (void);
uint8_t W25Q64_Send (uint8_t Data);
void W25Q64_Erase (uint8_t Erase, uint32_t Address);
void W25Q64_Page_Write (uint32_t Address, uint8_t *PtrData, uint32_t len);
void W25Q64_Read (uint32_t Address, uint8_t *PtrData,uint32_t len);

/*******************************************************************/
#endif











