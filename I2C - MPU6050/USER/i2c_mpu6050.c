#include "i2c_mpu6050.h"
#include "delay.h"
#include "stdio.h"
#include "i2c.h"
void MPU6050_init (void){
	// dat ty le lay mau
	I2C_Write_Data(MPU6050_I2C_ADDR,SMPLRT_DIV,0x07);
	// cai dat clock
	I2C_Write_Data(MPU6050_I2C_ADDR,PWR_MGMT_1,0x01);
	//cai dat cau hinh DLPF
	I2C_Write_Data(MPU6050_I2C_ADDR,CONFIG,0x00);
	//
	I2C_Write_Data(MPU6050_I2C_ADDR,ACCEL_CONFIG,0x00);
	//
	I2C_Write_Data(MPU6050_I2C_ADDR,GYRO_CONFIG,0x18);
	//
	I2C_Write_Data(MPU6050_I2C_ADDR,INT_ENABLE,0x01);
}
void MPU6050_Read_Accel (double* AX, double* AY, double* AZ){
	uint8_t data[8];
	int16_t Ax, Ay, Az;
	
	data[0] = I2C_Read_Data(MPU6050_I2C_ADDR,ACCEL_XOUT_H);
	data[1] = I2C_Read_Data(MPU6050_I2C_ADDR,ACCEL_XOUT_H);
	Ax = ((int16_t)data[0]<< 8 )| (int16_t)data[1];
	
	data[2] = I2C_Read_Data(MPU6050_I2C_ADDR,ACCEL_YOUT_H);
	data[3] = I2C_Read_Data(MPU6050_I2C_ADDR,ACCEL_YOUT_H);
	Ay = ((int16_t)data[2]<< 8 )| (int16_t)data[3];
	
	data[4] = I2C_Read_Data(MPU6050_I2C_ADDR,ACCEL_ZOUT_H);
	data[5] = I2C_Read_Data(MPU6050_I2C_ADDR,ACCEL_ZOUT_H);
	Az = ((int16_t)data[4]<< 8 )| (int16_t)data[5];
	
	*AX = (double)Ax/16384.0;
  *AY = (double)Ay/16384.0;
  *AZ = (double)Az/16384.0;
}
void MPU6050_Temperature_sensor (double* temp){
	uint8_t data_H,data_L;
	int16_t data;

	data_H = I2C_Read_Data(MPU6050_I2C_ADDR,TEMP_OUT_H);
	data_L = I2C_Read_Data(MPU6050_I2C_ADDR,TEMP_OUT_H);
	data = ((int16_t)data_H << 8 )| (int16_t)data_L;
	*temp=  ((double)data)/340.00+36.53;
}
void MPU6050_Read_GYRO (double* GX, double* GY, double* GZ){
	uint8_t data[8];
	int16_t Gx, Gy, Gz;
	
	data[0] = I2C_Read_Data(MPU6050_I2C_ADDR,GYRO_XOUT_H);
	data[1] = I2C_Read_Data(MPU6050_I2C_ADDR,GYRO_XOUT_H);
	Gx = ((int16_t)data[0]<< 8 )| (int16_t)data[1];
	
	data[2] = I2C_Read_Data(MPU6050_I2C_ADDR,GYRO_YOUT_H);
	data[3] = I2C_Read_Data(MPU6050_I2C_ADDR,GYRO_YOUT_H);
	Gy = ((int16_t)data[2]<< 8 )| (int16_t)data[3];
	
	data[4] = I2C_Read_Data(MPU6050_I2C_ADDR,GYRO_ZOUT_H);
	data[5] = I2C_Read_Data(MPU6050_I2C_ADDR,GYRO_ZOUT_H);
	Gz = ((int16_t)data[4]<< 8 )| (int16_t)data[5];
	
	*GX = (double)Gx/131.0;
  *GY = (double)Gy/131.0;
  *GZ = (double)Gz/131.0;
}





