#include "stm32f4xx.h"                  // Device header
#include "main.h" 
extern void User_Setup();
extern void User_Loop();
int main(){
	User_Setup();
	while(1)
	{
		User_Loop();
	}
}



