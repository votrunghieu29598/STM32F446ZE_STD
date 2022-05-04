# 1 "USER\\w25q64_f4.c"
# 1 "USER\\w25q64_f4.h"
# 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
# 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











# 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
# 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



# 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











# 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
# 4 "USER\\w25q64_f4.h"
# 1 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"










































  



 



 
    






  


 
  


 

# 105 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 






 






# 133 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







            
# 151 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 










 
# 174 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 



 



 









 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      
 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMP_STAMP_IRQn             = 2,       
  RTC_WKUP_IRQn               = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Stream0_IRQn           = 11,      
  DMA1_Stream1_IRQn           = 12,      
  DMA1_Stream2_IRQn           = 13,      
  DMA1_Stream3_IRQn           = 14,      
  DMA1_Stream4_IRQn           = 15,      
  DMA1_Stream5_IRQn           = 16,      
  DMA1_Stream6_IRQn           = 17,      
  ADC_IRQn                    = 18,      

# 293 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 366 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
    
# 441 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 477 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
   
# 523 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 600 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  CAN1_TX_IRQn                = 19,      
  CAN1_RX0_IRQn               = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_TIM9_IRQn          = 24,      
  TIM1_UP_TIM10_IRQn          = 25,      
  TIM1_TRG_COM_TIM11_IRQn     = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,        
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTC_Alarm_IRQn              = 41,      
  OTG_FS_WKUP_IRQn            = 42,          
  TIM8_BRK_IRQn               = 43,      
  TIM8_BRK_TIM12_IRQn         = 43,      
  TIM8_UP_TIM13_IRQn          = 44,      
  TIM8_TRG_COM_TIM14_IRQn     = 45,      
  DMA1_Stream7_IRQn           = 47,      
  FMC_IRQn                    = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_DAC_IRQn               = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Stream0_IRQn           = 56,      
  DMA2_Stream1_IRQn           = 57,      
  DMA2_Stream2_IRQn           = 58,      
  DMA2_Stream3_IRQn           = 59,      
  DMA2_Stream4_IRQn           = 60,      
  CAN2_TX_IRQn                = 63,      
  CAN2_RX0_IRQn               = 64,      
  CAN2_RX1_IRQn               = 65,      
  CAN2_SCE_IRQn               = 66,      
  OTG_FS_IRQn                 = 67,      
  DMA2_Stream5_IRQn           = 68,      
  DMA2_Stream6_IRQn           = 69,      
  DMA2_Stream7_IRQn           = 70,      
  USART6_IRQn                 = 71,      
  I2C3_EV_IRQn                = 72,      
  I2C3_ER_IRQn                = 73,      
  OTG_HS_EP1_OUT_IRQn         = 74,      
  OTG_HS_EP1_IN_IRQn          = 75,      
  OTG_HS_WKUP_IRQn            = 76,      
  OTG_HS_IRQn                 = 77,      
  DCMI_IRQn                   = 78,      
  FPU_IRQn                    = 81,      
  SPI4_IRQn                   = 84,      
  SAI1_IRQn                   = 87,      
  SAI2_IRQn                   = 91,      
  QUADSPI_IRQn                = 92,      
  CEC_IRQn                    = 93,      
  SPDIF_RX_IRQn               = 94,      
  FMPI2C1_EV_IRQn             = 95,      
  FMPI2C1_ER_IRQn             = 96       


# 733 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 811 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
} IRQn_Type;



 

# 1 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"
 







 

























 
























 




 


 

 













# 110 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"



 
# 125 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"

# 186 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"

# 188 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"
# 1 ".\\Libraries\\CMSIS\\Include\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 










 










 












 









 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 










 









 
# 209 ".\\Libraries\\CMSIS\\Include\\core_cmInstr.h"








 











 









 









 











 











 











 







 










 










 










 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}









 









 









 









 









 









 





# 913 ".\\Libraries\\CMSIS\\Include\\core_cmInstr.h"

   

# 189 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"
# 1 ".\\Libraries\\CMSIS\\Include\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}








 







 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}








 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xff);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}











 
static __inline uint32_t __get_FPSCR(void)
{

  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}







 
static __inline void __set_FPSCR(uint32_t fpscr)
{

  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);

}




# 661 ".\\Libraries\\CMSIS\\Include\\core_cmFunc.h"

 

# 190 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"
# 1 ".\\Libraries\\CMSIS\\Include\\core_cmSimd.h"
 







 

























 
















 


 



 


 
# 122 ".\\Libraries\\CMSIS\\Include\\core_cmSimd.h"











# 689 ".\\Libraries\\CMSIS\\Include\\core_cmSimd.h"

 






# 191 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"
















 
# 234 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"

 






 
# 250 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"

 













 


 





 


 
typedef union
{
  struct
  {
    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 




















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 





 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:7;                
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                
    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 





























 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 









 






 


 
typedef struct
{
  volatile uint32_t ISER[8];                  
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];                  
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];                  
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];                  
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];                  
       uint32_t RESERVED4[56];
  volatile uint8_t  IP[240];                  
       uint32_t RESERVED5[644];
  volatile  uint32_t STIR;                     
}  NVIC_Type;

 



 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
  volatile uint32_t VTOR;                     
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
  volatile uint8_t  SHP[12];                  
  volatile uint32_t SHCSR;                    
  volatile uint32_t CFSR;                     
  volatile uint32_t HFSR;                     
  volatile uint32_t DFSR;                     
  volatile uint32_t MMFAR;                    
  volatile uint32_t BFAR;                     
  volatile uint32_t AFSR;                     
  volatile const  uint32_t PFR[2];                   
  volatile const  uint32_t DFR;                      
  volatile const  uint32_t ADR;                      
  volatile const  uint32_t MMFR[4];                  
  volatile const  uint32_t ISAR[5];                  
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;                    
} SCB_Type;

 















 






























 



 





















 









 


















 










































 









 









 















 






 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile const  uint32_t ICTR;                     
  volatile uint32_t ACTLR;                    
} SCnSCB_Type;

 



 















 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 






 


 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                   
    volatile  uint16_t   u16;                  
    volatile  uint32_t   u32;                  
  }  PORT [32];                           
       uint32_t RESERVED0[864];
  volatile uint32_t TER;                      
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;                      
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;                      
       uint32_t RESERVED3[29];
  volatile  uint32_t IWR;                      
  volatile const  uint32_t IRR;                      
  volatile uint32_t IMCR;                     
       uint32_t RESERVED4[43];
  volatile  uint32_t LAR;                      
  volatile const  uint32_t LSR;                      
       uint32_t RESERVED5[6];
  volatile const  uint32_t PID4;                     
  volatile const  uint32_t PID5;                     
  volatile const  uint32_t PID6;                     
  volatile const  uint32_t PID7;                     
  volatile const  uint32_t PID0;                     
  volatile const  uint32_t PID1;                     
  volatile const  uint32_t PID2;                     
  volatile const  uint32_t PID3;                     
  volatile const  uint32_t CID0;                     
  volatile const  uint32_t CID1;                     
  volatile const  uint32_t CID2;                     
  volatile const  uint32_t CID3;                     
} ITM_Type;

 



 



























 



 



 



 









   






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t CYCCNT;                   
  volatile uint32_t CPICNT;                   
  volatile uint32_t EXCCNT;                   
  volatile uint32_t SLEEPCNT;                 
  volatile uint32_t LSUCNT;                   
  volatile uint32_t FOLDCNT;                  
  volatile const  uint32_t PCSR;                     
  volatile uint32_t COMP0;                    
  volatile uint32_t MASK0;                    
  volatile uint32_t FUNCTION0;                
       uint32_t RESERVED0[1];
  volatile uint32_t COMP1;                    
  volatile uint32_t MASK1;                    
  volatile uint32_t FUNCTION1;                
       uint32_t RESERVED1[1];
  volatile uint32_t COMP2;                    
  volatile uint32_t MASK2;                    
  volatile uint32_t FUNCTION2;                
       uint32_t RESERVED2[1];
  volatile uint32_t COMP3;                    
  volatile uint32_t MASK3;                    
  volatile uint32_t FUNCTION3;                
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   






 


 
typedef struct
{
  volatile uint32_t SSPSR;                    
  volatile uint32_t CSPSR;                    
       uint32_t RESERVED0[2];
  volatile uint32_t ACPR;                     
       uint32_t RESERVED1[55];
  volatile uint32_t SPPR;                     
       uint32_t RESERVED2[131];
  volatile const  uint32_t FFSR;                     
  volatile uint32_t FFCR;                     
  volatile const  uint32_t FSCR;                     
       uint32_t RESERVED3[759];
  volatile const  uint32_t TRIGGER;                  
  volatile const  uint32_t FIFO0;                    
  volatile const  uint32_t ITATBCTR2;                
       uint32_t RESERVED4[1];
  volatile const  uint32_t ITATBCTR0;                
  volatile const  uint32_t FIFO1;                    
  volatile uint32_t ITCTRL;                   
       uint32_t RESERVED5[39];
  volatile uint32_t CLAIMSET;                 
  volatile uint32_t CLAIMCLR;                 
       uint32_t RESERVED7[8];
  volatile const  uint32_t DEVID;                    
  volatile const  uint32_t DEVTYPE;                  
} TPI_Type;

 



 



 












 






 



 





















 



 





















 



 



 


















 






   







 


 
typedef struct
{
  volatile const  uint32_t TYPE;                     
  volatile uint32_t CTRL;                     
  volatile uint32_t RNR;                      
  volatile uint32_t RBAR;                     
  volatile uint32_t RASR;                     
  volatile uint32_t RBAR_A1;                  
  volatile uint32_t RASR_A1;                  
  volatile uint32_t RBAR_A2;                  
  volatile uint32_t RASR_A2;                  
  volatile uint32_t RBAR_A3;                  
  volatile uint32_t RASR_A3;                  
} MPU_Type;

 









 









 



 









 






























 








 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile uint32_t FPCCR;                    
  volatile uint32_t FPCAR;                    
  volatile uint32_t FPDSCR;                   
  volatile const  uint32_t MVFR0;                    
  volatile const  uint32_t MVFR1;                    
} FPU_Type;

 



























 



 












 
























 












 







 


 
typedef struct
{
  volatile uint32_t DHCSR;                    
  volatile  uint32_t DCRSR;                    
  volatile uint32_t DCRDR;                    
  volatile uint32_t DEMCR;                    
} CoreDebug_Type;

 




































 






 







































 






 

 
# 1461 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"

# 1470 ".\\Libraries\\CMSIS\\Include\\core_cm4.h"











 










 

 



 




 










 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16) | (7UL << 8)));              
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16) |
                (PriorityGroupTmp << 8)                       );               
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}







 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8));
}







 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}










 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if((int32_t)IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8 - 4)) & (uint32_t)0xFFUL);
  }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               = (uint8_t)((priority << (8 - 4)) & (uint32_t)0xFFUL);
  }
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if((int32_t)IRQn < 0) {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] >> (8 - 4)));
  }
  else {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               >> (8 - 4)));
  }
}













 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}













 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}





 
static __inline void NVIC_SystemReset(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                            (1UL << 2)    );          
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0);                                                           
  while(1) { __nop(); }                                              
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL )) { return (1UL); }     

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  NVIC_SetPriority (SysTick_IRQn, (1UL << 4) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL );                          
  return (0UL);                                                      
}



 



 




 

extern volatile int32_t ITM_RxBuffer;                     












 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0UL) { __nop(); }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t)ch;
  }
  return (ch);
}








 
static __inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }

  return (ch);
}








 
static __inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

 










# 818 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
# 1 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\system_stm32f4xx.h"

























  



 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           




 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
# 819 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
# 820 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



   
 
typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;   
typedef const int16_t sc16;   
typedef const int8_t sc8;    

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;   
typedef volatile const int16_t vsc16;   
typedef volatile const int8_t vsc8;    

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;   
typedef const uint16_t uc16;   
typedef const uint8_t uc8;    

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;   
typedef volatile const uint16_t vuc16;   
typedef volatile const uint8_t vuc8;    

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;



 



    



 

typedef struct
{
  volatile uint32_t SR;      
  volatile uint32_t CR1;           
  volatile uint32_t CR2;     
  volatile uint32_t SMPR1;   
  volatile uint32_t SMPR2;   
  volatile uint32_t JOFR1;   
  volatile uint32_t JOFR2;   
  volatile uint32_t JOFR3;   
  volatile uint32_t JOFR4;   
  volatile uint32_t HTR;     
  volatile uint32_t LTR;     
  volatile uint32_t SQR1;    
  volatile uint32_t SQR2;    
  volatile uint32_t SQR3;    
  volatile uint32_t JSQR;    
  volatile uint32_t JDR1;    
  volatile uint32_t JDR2;    
  volatile uint32_t JDR3;    
  volatile uint32_t JDR4;    
  volatile uint32_t DR;      
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t CSR;     
  volatile uint32_t CCR;     
  volatile uint32_t CDR;    
 
} ADC_Common_TypeDef;




 

typedef struct
{
  volatile uint32_t TIR;   
  volatile uint32_t TDTR;  
  volatile uint32_t TDLR;  
  volatile uint32_t TDHR;  
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;   
  volatile uint32_t RDTR;  
  volatile uint32_t RDLR;  
  volatile uint32_t RDHR;  
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;  
  volatile uint32_t FR2;  
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t              MCR;                  
  volatile uint32_t              MSR;                  
  volatile uint32_t              TSR;                  
  volatile uint32_t              RF0R;                 
  volatile uint32_t              RF1R;                 
  volatile uint32_t              IER;                  
  volatile uint32_t              ESR;                  
  volatile uint32_t              BTR;                  
  uint32_t                   RESERVED0[88];        
  CAN_TxMailBox_TypeDef      sTxMailBox[3];        
  CAN_FIFOMailBox_TypeDef    sFIFOMailBox[2];      
  uint32_t                   RESERVED1[12];        
  volatile uint32_t              FMR;                  
  volatile uint32_t              FM1R;                 
  uint32_t                   RESERVED2;            
  volatile uint32_t              FS1R;                 
  uint32_t                   RESERVED3;            
  volatile uint32_t              FFA1R;                
  uint32_t                   RESERVED4;            
  volatile uint32_t              FA1R;                 
  uint32_t                   RESERVED5[8];          
  CAN_FilterRegister_TypeDef sFilterRegister[28];  
} CAN_TypeDef;




 
typedef struct
{
  volatile uint32_t CR;            
  volatile uint32_t CFGR;          
  volatile uint32_t TXDR;          
  volatile uint32_t RXDR;          
  volatile uint32_t ISR;           
  volatile uint32_t IER;           
}CEC_TypeDef;




 

typedef struct
{
  volatile uint32_t DR;          
  volatile uint8_t  IDR;         
  uint8_t       RESERVED0;   
  uint16_t      RESERVED1;   
  volatile uint32_t CR;          
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SWTRIGR;   
  volatile uint32_t DHR12R1;   
  volatile uint32_t DHR12L1;   
  volatile uint32_t DHR8R1;    
  volatile uint32_t DHR12R2;   
  volatile uint32_t DHR12L2;   
  volatile uint32_t DHR8R2;    
  volatile uint32_t DHR12RD;   
  volatile uint32_t DHR12LD;   
  volatile uint32_t DHR8RD;    
  volatile uint32_t DOR1;      
  volatile uint32_t DOR2;      
  volatile uint32_t SR;        
} DAC_TypeDef;

# 1062 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


 

typedef struct
{
  volatile uint32_t IDCODE;   
  volatile uint32_t CR;       
  volatile uint32_t APB1FZ;   
  volatile uint32_t APB2FZ;   
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SR;        
  volatile uint32_t RISR;      
  volatile uint32_t IER;       
  volatile uint32_t MISR;      
  volatile uint32_t ICR;       
  volatile uint32_t ESCR;      
  volatile uint32_t ESUR;      
  volatile uint32_t CWSTRTR;   
  volatile uint32_t CWSIZER;   
  volatile uint32_t DR;        
} DCMI_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;      
  volatile uint32_t NDTR;    
  volatile uint32_t PAR;     
  volatile uint32_t M0AR;    
  volatile uint32_t M1AR;    
  volatile uint32_t FCR;     
} DMA_Stream_TypeDef;

typedef struct
{
  volatile uint32_t LISR;    
  volatile uint32_t HISR;    
  volatile uint32_t LIFCR;   
  volatile uint32_t HIFCR;   
} DMA_TypeDef;
 


 

typedef struct
{
  volatile uint32_t CR;             
  volatile uint32_t ISR;            
  volatile uint32_t IFCR;           
  volatile uint32_t FGMAR;          
  volatile uint32_t FGOR;           
  volatile uint32_t BGMAR;          
  volatile uint32_t BGOR;           
  volatile uint32_t FGPFCCR;        
  volatile uint32_t FGCOLR;         
  volatile uint32_t BGPFCCR;        
  volatile uint32_t BGCOLR;         
  volatile uint32_t FGCMAR;         
  volatile uint32_t BGCMAR;         
  volatile uint32_t OPFCCR;         
  volatile uint32_t OCOLR;          
  volatile uint32_t OMAR;           
  volatile uint32_t OOR;            
  volatile uint32_t NLR;            
  volatile uint32_t LWR;            
  volatile uint32_t AMTCR;          
  uint32_t      RESERVED[236];  
  volatile uint32_t FGCLUT[256];    
  volatile uint32_t BGCLUT[256];    
} DMA2D_TypeDef;

# 1228 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
  uint32_t      RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
  uint32_t      RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
  uint32_t      RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
  uint32_t      RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
  uint32_t      RESERVED4[5];
  volatile uint32_t MMCTGFCR;
  uint32_t      RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
  uint32_t      RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
  uint32_t      RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
  volatile uint32_t RESERVED8;
  volatile uint32_t PTPTSSR;
  uint32_t      RESERVED9[565];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
  volatile uint32_t DMARSWTR;
  uint32_t      RESERVED10[8];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;     
  volatile uint32_t EMR;     
  volatile uint32_t RTSR;    
  volatile uint32_t FTSR;    
  volatile uint32_t SWIER;   
  volatile uint32_t PR;      
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;       
  volatile uint32_t KEYR;      
  volatile uint32_t OPTKEYR;   
  volatile uint32_t SR;        
  volatile uint32_t CR;        
  volatile uint32_t OPTCR;     
  volatile uint32_t OPTCR1;    
} FLASH_TypeDef;

# 1392 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"




 

typedef struct
{
  volatile uint32_t BTCR[8];        
} FMC_Bank1_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t BWTR[7];     
} FMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;        
  volatile uint32_t SR2;         
  volatile uint32_t PMEM2;       
  volatile uint32_t PATT2;       
  uint32_t      RESERVED0;   
  volatile uint32_t ECCR2;       
} FMC_Bank2_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR3;        
  volatile uint32_t SR3;         
  volatile uint32_t PMEM3;       
  volatile uint32_t PATT3;       
  uint32_t      RESERVED0;   
  volatile uint32_t ECCR3;       
} FMC_Bank3_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR4;        
  volatile uint32_t SR4;         
  volatile uint32_t PMEM4;       
  volatile uint32_t PATT4;       
  volatile uint32_t PIO4;        
} FMC_Bank4_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t SDCR[2];         
  volatile uint32_t SDTR[2];         
  volatile uint32_t SDCMR;        
  volatile uint32_t SDRTR;        
  volatile uint32_t SDSR;         
} FMC_Bank5_6_TypeDef; 




 

typedef struct
{
  volatile uint32_t MODER;     
  volatile uint32_t OTYPER;    
  volatile uint32_t OSPEEDR;   
  volatile uint32_t PUPDR;     
  volatile uint32_t IDR;       
  volatile uint32_t ODR;       
  volatile uint16_t BSRRL;     
  volatile uint16_t BSRRH;     
  volatile uint32_t LCKR;      
  volatile uint32_t AFR[2];    
} GPIO_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MEMRMP;        
  volatile uint32_t PMC;           
  volatile uint32_t EXTICR[4];     
# 1501 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
  uint32_t      RESERVED[2];    
  volatile uint32_t CMPCR;         




} SYSCFG_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;         
  uint16_t      RESERVED0;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED1;   
  volatile uint16_t OAR1;        
  uint16_t      RESERVED2;   
  volatile uint16_t OAR2;        
  uint16_t      RESERVED3;   
  volatile uint16_t DR;          
  uint16_t      RESERVED4;   
  volatile uint16_t SR1;         
  uint16_t      RESERVED5;   
  volatile uint16_t SR2;         
  uint16_t      RESERVED6;   
  volatile uint16_t CCR;         
  uint16_t      RESERVED7;   
  volatile uint16_t TRISE;       
  uint16_t      RESERVED8;   
  volatile uint16_t FLTR;        
  uint16_t      RESERVED9;   
} I2C_TypeDef;




 

typedef struct
{
  volatile uint32_t CR1;       
  volatile uint32_t CR2;       
  volatile uint32_t OAR1;      
  volatile uint32_t OAR2;      
  volatile uint32_t TIMINGR;   
  volatile uint32_t TIMEOUTR;  
  volatile uint32_t ISR;       
  volatile uint32_t ICR;       
  volatile uint32_t PECR;      
  volatile uint32_t RXDR;      
  volatile uint32_t TXDR;      
}FMPI2C_TypeDef;




 

typedef struct
{
  volatile uint32_t KR;    
  volatile uint32_t PR;    
  volatile uint32_t RLR;   
  volatile uint32_t SR;    
} IWDG_TypeDef;



 
  
typedef struct
{
  uint32_t      RESERVED0[2];   
  volatile uint32_t SSCR;           
  volatile uint32_t BPCR;           
  volatile uint32_t AWCR;           
  volatile uint32_t TWCR;           
  volatile uint32_t GCR;            
  uint32_t      RESERVED1[2];   
  volatile uint32_t SRCR;           
  uint32_t      RESERVED2[1];   
  volatile uint32_t BCCR;           
  uint32_t      RESERVED3[1];   
  volatile uint32_t IER;            
  volatile uint32_t ISR;            
  volatile uint32_t ICR;            
  volatile uint32_t LIPCR;          
  volatile uint32_t CPSR;           
  volatile uint32_t CDSR;          
} LTDC_TypeDef;  



 
  
typedef struct
{  
  volatile uint32_t CR;             
  volatile uint32_t WHPCR;          
  volatile uint32_t WVPCR;          
  volatile uint32_t CKCR;           
  volatile uint32_t PFCR;           
  volatile uint32_t CACR;           
  volatile uint32_t DCCR;           
  volatile uint32_t BFCR;           
  uint32_t      RESERVED0[2];   
  volatile uint32_t CFBAR;          
  volatile uint32_t CFBLR;          
  volatile uint32_t CFBLNR;         
  uint32_t      RESERVED1[3];   
  volatile uint32_t CLUTWR;          

} LTDC_Layer_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CSR;   
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;             
  volatile uint32_t PLLCFGR;        
  volatile uint32_t CFGR;           
  volatile uint32_t CIR;            
  volatile uint32_t AHB1RSTR;       
  volatile uint32_t AHB2RSTR;       
  volatile uint32_t AHB3RSTR;       
  uint32_t      RESERVED0;      
  volatile uint32_t APB1RSTR;       
  volatile uint32_t APB2RSTR;       
  uint32_t      RESERVED1[2];   
  volatile uint32_t AHB1ENR;        
  volatile uint32_t AHB2ENR;        
  volatile uint32_t AHB3ENR;        
  uint32_t      RESERVED2;      
  volatile uint32_t APB1ENR;        
  volatile uint32_t APB2ENR;        
  uint32_t      RESERVED3[2];   
  volatile uint32_t AHB1LPENR;      
  volatile uint32_t AHB2LPENR;      
  volatile uint32_t AHB3LPENR;      
  uint32_t      RESERVED4;      
  volatile uint32_t APB1LPENR;      
  volatile uint32_t APB2LPENR;      
  uint32_t      RESERVED5[2];   
  volatile uint32_t BDCR;           
  volatile uint32_t CSR;            
  uint32_t      RESERVED6[2];   
  volatile uint32_t SSCGR;          
  volatile uint32_t PLLI2SCFGR;     
  volatile uint32_t PLLSAICFGR;     
  volatile uint32_t DCKCFGR;        
  volatile uint32_t CKGATENR;         
  volatile uint32_t DCKCFGR2;         

} RCC_TypeDef;



 

typedef struct
{
  volatile uint32_t TR;       
  volatile uint32_t DR;       
  volatile uint32_t CR;       
  volatile uint32_t ISR;      
  volatile uint32_t PRER;     
  volatile uint32_t WUTR;     
  volatile uint32_t CALIBR;   
  volatile uint32_t ALRMAR;   
  volatile uint32_t ALRMBR;   
  volatile uint32_t WPR;      
  volatile uint32_t SSR;      
  volatile uint32_t SHIFTR;   
  volatile uint32_t TSTR;     
  volatile uint32_t TSDR;     
  volatile uint32_t TSSSR;    
  volatile uint32_t CALR;     
  volatile uint32_t TAFCR;    
  volatile uint32_t ALRMASSR; 
  volatile uint32_t ALRMBSSR; 
  uint32_t RESERVED7;     
  volatile uint32_t BKP0R;    
  volatile uint32_t BKP1R;    
  volatile uint32_t BKP2R;    
  volatile uint32_t BKP3R;    
  volatile uint32_t BKP4R;    
  volatile uint32_t BKP5R;    
  volatile uint32_t BKP6R;    
  volatile uint32_t BKP7R;    
  volatile uint32_t BKP8R;    
  volatile uint32_t BKP9R;    
  volatile uint32_t BKP10R;   
  volatile uint32_t BKP11R;   
  volatile uint32_t BKP12R;   
  volatile uint32_t BKP13R;   
  volatile uint32_t BKP14R;   
  volatile uint32_t BKP15R;   
  volatile uint32_t BKP16R;   
  volatile uint32_t BKP17R;   
  volatile uint32_t BKP18R;   
  volatile uint32_t BKP19R;   
} RTC_TypeDef;




 
  
typedef struct
{
  volatile uint32_t GCR;       
} SAI_TypeDef;

typedef struct
{
  volatile uint32_t CR1;       
  volatile uint32_t CR2;       
  volatile uint32_t FRCR;      
  volatile uint32_t SLOTR;     
  volatile uint32_t IMR;       
  volatile uint32_t SR;        
  volatile uint32_t CLRFR;     
  volatile uint32_t DR;        
} SAI_Block_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;           
  volatile uint32_t CLKCR;           
  volatile uint32_t ARG;             
  volatile uint32_t CMD;             
  volatile const uint32_t  RESPCMD;         
  volatile const uint32_t  RESP1;           
  volatile const uint32_t  RESP2;           
  volatile const uint32_t  RESP3;           
  volatile const uint32_t  RESP4;           
  volatile uint32_t DTIMER;          
  volatile uint32_t DLEN;            
  volatile uint32_t DCTRL;           
  volatile const uint32_t  DCOUNT;          
  volatile const uint32_t  STA;             
  volatile uint32_t ICR;             
  volatile uint32_t MASK;            
  uint32_t      RESERVED0[2];    
  volatile const uint32_t  FIFOCNT;         
  uint32_t      RESERVED1[13];   
  volatile uint32_t FIFO;            
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;         
  uint16_t      RESERVED0;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED1;   
  volatile uint16_t SR;          
  uint16_t      RESERVED2;   
  volatile uint16_t DR;          
  uint16_t      RESERVED3;   
  volatile uint16_t CRCPR;       
  uint16_t      RESERVED4;   
  volatile uint16_t RXCRCR;      
  uint16_t      RESERVED5;   
  volatile uint16_t TXCRCR;      
  uint16_t      RESERVED6;   
  volatile uint16_t I2SCFGR;     
  uint16_t      RESERVED7;   
  volatile uint16_t I2SPR;       
  uint16_t      RESERVED8;   
} SPI_TypeDef;




 
typedef struct
{
  volatile uint32_t   CR;            
  volatile uint16_t   IMR;           
  uint16_t        RESERVED0;       
  volatile uint32_t   SR;            
  volatile uint16_t   IFCR;          
  uint16_t        RESERVED1;        
  volatile uint32_t   DR;            
  volatile uint32_t   CSR;           
   volatile uint32_t  DIR;           
  uint16_t        RESERVED2;        
} SPDIFRX_TypeDef;





 
typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t DCR;       
  volatile uint32_t SR;        
  volatile uint32_t FCR;       
  volatile uint32_t DLR;       
  volatile uint32_t CCR;       
  volatile uint32_t AR;        
  volatile uint32_t ABR;       
  volatile uint32_t DR;        
  volatile uint32_t PSMKR;     
  volatile uint32_t PSMAR;     
  volatile uint32_t PIR;       
  volatile uint32_t LPTR;      
} QUADSPI_TypeDef;





 
typedef struct
{
  volatile uint32_t   CR;            
  volatile uint16_t   IMR;           
  uint16_t        RESERVED0;       
  volatile uint32_t   SR;            
  volatile uint16_t   IFCR;          
  uint16_t        RESERVED1;        
  volatile uint32_t   DR;            
  volatile uint32_t   CSR;           
   volatile uint32_t  DIR;           
  uint16_t        RESERVED2;        
} SPDIF_TypeDef;




 

typedef struct
{
  volatile uint16_t CR1;          
  uint16_t      RESERVED0;    
  volatile uint16_t CR2;          
  uint16_t      RESERVED1;    
  volatile uint16_t SMCR;         
  uint16_t      RESERVED2;    
  volatile uint16_t DIER;         
  uint16_t      RESERVED3;    
  volatile uint16_t SR;           
  uint16_t      RESERVED4;    
  volatile uint16_t EGR;          
  uint16_t      RESERVED5;    
  volatile uint16_t CCMR1;        
  uint16_t      RESERVED6;    
  volatile uint16_t CCMR2;        
  uint16_t      RESERVED7;    
  volatile uint16_t CCER;         
  uint16_t      RESERVED8;    
  volatile uint32_t CNT;          
  volatile uint16_t PSC;          
  uint16_t      RESERVED9;    
  volatile uint32_t ARR;          
  volatile uint16_t RCR;          
  uint16_t      RESERVED10;   
  volatile uint32_t CCR1;         
  volatile uint32_t CCR2;         
  volatile uint32_t CCR3;         
  volatile uint32_t CCR4;         
  volatile uint16_t BDTR;         
  uint16_t      RESERVED11;   
  volatile uint16_t DCR;          
  uint16_t      RESERVED12;   
  volatile uint16_t DMAR;         
  uint16_t      RESERVED13;   
  volatile uint16_t OR;           
  uint16_t      RESERVED14;   
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t SR;          
  uint16_t      RESERVED0;   
  volatile uint16_t DR;          
  uint16_t      RESERVED1;   
  volatile uint16_t BRR;         
  uint16_t      RESERVED2;   
  volatile uint16_t CR1;         
  uint16_t      RESERVED3;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED4;   
  volatile uint16_t CR3;         
  uint16_t      RESERVED5;   
  volatile uint16_t GTPR;        
  uint16_t      RESERVED6;   
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CFR;   
  volatile uint32_t SR;    
} WWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;          
  volatile uint32_t SR;          
  volatile uint32_t DR;          
  volatile uint32_t DOUT;        
  volatile uint32_t DMACR;       
  volatile uint32_t IMSCR;       
  volatile uint32_t RISR;        
  volatile uint32_t MISR;        
  volatile uint32_t K0LR;        
  volatile uint32_t K0RR;        
  volatile uint32_t K1LR;        
  volatile uint32_t K1RR;        
  volatile uint32_t K2LR;        
  volatile uint32_t K2RR;        
  volatile uint32_t K3LR;        
  volatile uint32_t K3RR;        
  volatile uint32_t IV0LR;       
  volatile uint32_t IV0RR;       
  volatile uint32_t IV1LR;       
  volatile uint32_t IV1RR;       
  volatile uint32_t CSGCMCCM0R;  
  volatile uint32_t CSGCMCCM1R;  
  volatile uint32_t CSGCMCCM2R;  
  volatile uint32_t CSGCMCCM3R;  
  volatile uint32_t CSGCMCCM4R;  
  volatile uint32_t CSGCMCCM5R;  
  volatile uint32_t CSGCMCCM6R;  
  volatile uint32_t CSGCMCCM7R;  
  volatile uint32_t CSGCM0R;     
  volatile uint32_t CSGCM1R;     
  volatile uint32_t CSGCM2R;     
  volatile uint32_t CSGCM3R;     
  volatile uint32_t CSGCM4R;     
  volatile uint32_t CSGCM5R;     
  volatile uint32_t CSGCM6R;     
  volatile uint32_t CSGCM7R;     
} CRYP_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t CR;                
  volatile uint32_t DIN;               
  volatile uint32_t STR;               
  volatile uint32_t HR[5];             
  volatile uint32_t IMR;               
  volatile uint32_t SR;                
       uint32_t RESERVED[52];      
  volatile uint32_t CSR[54];           
} HASH_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t HR[8];       
} HASH_DIGEST_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t CR;   
  volatile uint32_t SR;   
  volatile uint32_t DR;   
} RNG_TypeDef;

# 2029 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


 
  


 

# 2052 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
      












# 2079 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 





 
# 2136 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 2205 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 2245 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






# 2261 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


 
# 2271 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 
  


 
# 2424 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 2432 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 2441 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"





 



 
  
  

 
    
 
 
 

 
 
 
 
 
 
# 2472 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 2498 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
  
 
# 2524 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 2562 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 2604 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 
# 2653 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 2691 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 2729 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 2758 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 



 
# 2794 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 
# 2821 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 
 
 
 
 
 
 
# 2842 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 2853 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 2871 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"











 





 





 
# 2909 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 












 
# 2930 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
# 3070 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3087 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3104 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3121 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3155 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3189 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3223 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3257 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3291 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3325 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3359 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3393 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3427 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3461 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3495 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3529 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3563 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3597 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3631 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3665 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3699 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3733 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3767 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3801 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3835 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3869 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3903 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3937 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 3971 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 4005 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 4039 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 4073 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


 
 
 
 
 

 




 
# 4096 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 
# 4117 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 4133 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 



 



 


 
 
 
 
 
 


# 4170 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 4179 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"






 





 


 


 


 



 
 
 
 
 
 











































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 

 
 
 
 
 
 
# 4323 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 





 
# 4342 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






 


 






 






 






 


 





 





 



 



 





 
 
 
 
 

 

 
# 4431 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 
# 4443 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 



 

 
# 4473 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 4484 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 4495 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 


 
# 4512 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 




 



 



 



 



 



 



 


 
 
 
 
 
  
# 4590 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 4609 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
# 4620 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
# 4642 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
# 4664 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
# 4686 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
# 4708 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 

 

# 4727 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 

# 4736 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 

# 4745 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 4753 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 



 



 



 

# 4784 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 

# 4805 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 



 



 






 

 






 




 





 





 



 



 




 



 






 
                                                                     
 


 
 
 
 
 
 
# 4909 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 4932 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 4955 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 4978 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 5001 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 5024 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 
# 5048 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 5056 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 5065 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 5084 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 5092 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 5118 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



                                             
 
# 5136 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 5919 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


 
 
 
 
 
 











# 5949 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











# 5972 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











# 5995 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











# 6018 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 












# 6041 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"























 












# 6086 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"























 












# 6131 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"























 












# 6176 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"























 












# 6221 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"











 












# 6254 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"











 












# 6287 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"











 












# 6320 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"











 



























 



























 



























 
# 6423 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 6432 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 6441 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 6452 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6462 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6472 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6482 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 6493 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6503 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6513 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6523 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 6534 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6544 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6554 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6564 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 6575 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6585 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6595 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6605 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 6616 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6626 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6636 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6646 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 6657 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6667 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6677 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6687 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 6698 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6708 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6718 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 6728 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 






























 






























 





                                            
































 





                                            
































 




                                            












 






 














 
 
 
 
 
 
































































 
# 7002 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
































































 
































































 
# 7150 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 
# 7167 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 7185 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 
# 7202 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 7236 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 
# 7260 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 7269 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 





 
 
 
 
 
 
# 7300 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 7309 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







 



# 7330 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 



 


 
# 7355 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 7365 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 


 




 
 
 
 
 
 
# 7404 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 7417 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 




 






 






 
# 7460 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 7471 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 
 
 
 
 
 


 





 


 



 
 
 
 
 

 




 




 




 




 

# 7539 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 




 





 






 






 






 



 




 






 





 




 




 





 



 



 





                                
 




 



 




 



 






# 8843 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 











 
# 8870 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
























 


 
# 8909 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 
 
 
 
 
 
# 8949 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 8962 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 8977 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 


 
# 9027 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 


 


 


 


 


 


 



 
 
 
 
 
 



# 9064 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 9074 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 9085 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9094 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 9105 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"















# 9126 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 




# 9139 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




# 9151 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






# 9168 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 9175 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 











 











 
# 9206 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




















 
# 9252 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9271 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



  




 




# 9292 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9331 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9360 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"




 



 
# 9392 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






 













 
# 9452 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9487 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 
# 9514 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






 




# 9533 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9572 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9606 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 












 
# 9631 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 
# 9646 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 9657 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"






















 
# 9689 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 9700 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


















 









# 9744 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 9753 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 9762 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 9769 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 9777 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9789 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9806 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







# 9822 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 
 
 
 
 
 



 






 
 
 
 
 
 
# 9871 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9901 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9929 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 9947 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 


 



 
# 10000 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10042 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 



 
# 10081 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10101 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
# 10119 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10141 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10149 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10157 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 
 
 
 
 
 








 
































 









# 10282 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







 
# 10299 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 10308 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"




 


 
# 10322 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
                                     












 
# 10343 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10352 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"






 
# 10366 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 
 
 
 
 
 
# 10390 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10399 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10411 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 
# 10425 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10433 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 




 




 
 
 
 
 
 




 












 


 






# 10488 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 
















 


 
# 10558 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10573 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10599 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 
 
 
 
 
 









# 10631 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10639 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 10649 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 
























 




 
 
 
 
 
   












 






 


 






  
# 10739 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10754 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10769 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10784 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






  
# 10804 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10819 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10834 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10849 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




           


  
# 10869 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10883 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10897 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10911 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






  
# 10930 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10944 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10958 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



  
# 10972 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"












   



# 11010 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 
















 









# 11051 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 

























 
# 11094 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 11108 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 11118 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




























 





















 




























 





















 
# 11237 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 
# 11272 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"





# 11283 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 11291 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 11298 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
# 11309 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 11398 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 
# 11415 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 



 
# 11439 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 11448 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







 
# 11468 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 11479 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 
 
 
 
 
 
# 11496 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 
# 11504 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 
# 11516 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 
# 11524 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"




 





 



 
 
 
 
 
 



 









 
# 11575 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 


 






 
 
 
 
 
 
# 11619 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 11635 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 
# 11653 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
  
 


 
# 11669 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



  


 








 

  
# 11696 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






 



 


 


 
# 11725 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
# 11740 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
# 11755 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
 
 

 
# 11770 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 




 




 




 


 


 


 


 


 


 
 
 

 
# 11823 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

# 11830 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 



 


 



 


 


 


 



 
 
 

 
# 11905 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 




   
# 11956 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 11982 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
# 11999 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 


 


 


 




 

 

  

# 1 ".\\SCR\\stm32f4xx_conf.h"

























 

 



 
 
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


























 

 







 
# 1 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"










































  



 



 
    
# 12057 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 

  

 

 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"



 



  

 



  
typedef struct
{
  uint32_t ADC_Resolution;                
                                    
  FunctionalState ADC_ScanConvMode;       


  
  FunctionalState ADC_ContinuousConvMode; 

 
  uint32_t ADC_ExternalTrigConvEdge;      


 
  uint32_t ADC_ExternalTrigConv;          


 
  uint32_t ADC_DataAlign;                 

 
  uint8_t  ADC_NbrOfConversion;           


 
}ADC_InitTypeDef;
  


  
typedef struct 
{
  uint32_t ADC_Mode;                      

                                               
  uint32_t ADC_Prescaler;                 

 
  uint32_t ADC_DMAAccessMode;             


 
  uint32_t ADC_TwoSamplingDelay;          

 
  
}ADC_CommonInitTypeDef;


 



  






  
# 141 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
# 157 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
# 173 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                     


  




  
# 214 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                     


  




  
# 231 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                      


  




  
# 248 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
# 288 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  






  




  
# 327 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"












# 358 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
# 382 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
# 398 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                            


  




  
# 439 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
# 455 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
# 477 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
# 491 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
# 505 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
  
# 513 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  



  




  



  




  



  




  



  




  



  




  



  




  



  




  

 
   

   
void ADC_DeInit(void);

 
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_CommonInit(ADC_CommonInitTypeDef* ADC_CommonInitStruct);
void ADC_CommonStructInit(ADC_CommonInitTypeDef* ADC_CommonInitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);

 
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold,uint16_t LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel);

 
void ADC_TempSensorVrefintCmd(FunctionalState NewState);
void ADC_VBATCmd(FunctionalState NewState);

 
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_SoftwareStartConv(ADC_TypeDef* ADCx);
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx);
void ADC_EOCOnEachRegularChannelCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ContinuousModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, uint8_t Number);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx);
uint32_t ADC_GetMultiModeConversionValue(void);

 
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMARequestAfterLastTransferCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_MultiModeDMARequestAfterLastTransferCmd(FunctionalState NewState);

 
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, uint8_t Length);
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel, uint16_t Offset);
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConv);
void ADC_ExternalTrigInjectedConvEdgeConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConvEdge);
void ADC_SoftwareStartInjectedConv(ADC_TypeDef* ADCx);
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx);
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel);

 
void ADC_ITConfig(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint16_t ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint16_t ADC_IT);









  



  

 
# 35 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_crc.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_crc.h"



 



 

 
 



 



 

 
   

void CRC_ResetDR(void);
uint32_t CRC_CalcCRC(uint32_t Data);
uint32_t CRC_CalcBlockCRC(uint32_t pBuffer[], uint32_t BufferLength);
uint32_t CRC_GetCRC(void);
void CRC_SetIDRegister(uint8_t IDValue);
uint8_t CRC_GetIDRegister(void);









 



 

 
# 36 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"

























 

 







 
# 38 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"



 



  

 
 



  





# 76 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"

# 83 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"


  

 
  
uint32_t DBGMCU_GetREVID(void);
uint32_t DBGMCU_GetDEVID(void);
void DBGMCU_Config(uint32_t DBGMCU_Periph, FunctionalState NewState);
void DBGMCU_APB1PeriphConfig(uint32_t DBGMCU_Periph, FunctionalState NewState);
void DBGMCU_APB2PeriphConfig(uint32_t DBGMCU_Periph, FunctionalState NewState);









  



  

 
# 37 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


























  

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"



 



 

 



 

typedef struct
{
  uint32_t DMA_Channel;            
 
 
  uint32_t DMA_PeripheralBaseAddr;  

  uint32_t DMA_Memory0BaseAddr;    

 

  uint32_t DMA_DIR;                

 

  uint32_t DMA_BufferSize;         

 

  uint32_t DMA_PeripheralInc;      
 

  uint32_t DMA_MemoryInc;          
 

  uint32_t DMA_PeripheralDataSize; 
 

  uint32_t DMA_MemoryDataSize;     
 

  uint32_t DMA_Mode;               


 

  uint32_t DMA_Priority;           
 

  uint32_t DMA_FIFOMode;          


 

  uint32_t DMA_FIFOThreshold;      
 

  uint32_t DMA_MemoryBurst;        


 

  uint32_t DMA_PeripheralBurst;    


   
}DMA_InitTypeDef;

 



 

# 134 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"






  
# 149 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"

# 158 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  




  









  




  



  




  







  




  







  




  









  




  









  




  







  




  











  




  







  




  











  




  











  




  











  




 
# 346 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"

# 353 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  



 
# 400 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"




# 424 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  




  









  




  
# 487 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"





# 512 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  




  







  




  







  




  






  



  

 
  

  
void DMA_DeInit(DMA_Stream_TypeDef* DMAy_Streamx);

 
void DMA_Init(DMA_Stream_TypeDef* DMAy_Streamx, DMA_InitTypeDef* DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
void DMA_Cmd(DMA_Stream_TypeDef* DMAy_Streamx, FunctionalState NewState);

 
void DMA_PeriphIncOffsetSizeConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_Pincos);
void DMA_FlowControllerConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FlowCtrl);

 
void DMA_SetCurrDataCounter(DMA_Stream_TypeDef* DMAy_Streamx, uint16_t Counter);
uint16_t DMA_GetCurrDataCounter(DMA_Stream_TypeDef* DMAy_Streamx);

 
void DMA_DoubleBufferModeConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t Memory1BaseAddr,
                                uint32_t DMA_CurrentMemory);
void DMA_DoubleBufferModeCmd(DMA_Stream_TypeDef* DMAy_Streamx, FunctionalState NewState);
void DMA_MemoryTargetConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t MemoryBaseAddr,
                            uint32_t DMA_MemoryTarget);
uint32_t DMA_GetCurrentMemoryTarget(DMA_Stream_TypeDef* DMAy_Streamx);

 
FunctionalState DMA_GetCmdStatus(DMA_Stream_TypeDef* DMAy_Streamx);
uint32_t DMA_GetFIFOStatus(DMA_Stream_TypeDef* DMAy_Streamx);
FlagStatus DMA_GetFlagStatus(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FLAG);
void DMA_ClearFlag(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FLAG);
void DMA_ITConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_IT, FunctionalState NewState);
ITStatus DMA_GetITStatus(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_IT);
void DMA_ClearITPendingBit(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_IT);









 



 


 
# 38 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"



 



 

 



 

typedef enum
{
  EXTI_Mode_Interrupt = 0x00,
  EXTI_Mode_Event = 0x04
}EXTIMode_TypeDef;





 

typedef enum
{
  EXTI_Trigger_Rising = 0x08,
  EXTI_Trigger_Falling = 0x0C,  
  EXTI_Trigger_Rising_Falling = 0x10
}EXTITrigger_TypeDef;






 

typedef struct
{
  uint32_t EXTI_Line;               
 
   
  EXTIMode_TypeDef EXTI_Mode;       
 

  EXTITrigger_TypeDef EXTI_Trigger; 
 

  FunctionalState EXTI_LineCmd;     
  
}EXTI_InitTypeDef;

 



 



 

# 129 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"

                                          


# 145 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"
                    


 



 

 
 

 
void EXTI_DeInit(void);

 
void EXTI_Init(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_GenerateSWInterrupt(uint32_t EXTI_Line);

 
FlagStatus EXTI_GetFlagStatus(uint32_t EXTI_Line);
void EXTI_ClearFlag(uint32_t EXTI_Line);
ITStatus EXTI_GetITStatus(uint32_t EXTI_Line);
void EXTI_ClearITPendingBit(uint32_t EXTI_Line);









 



 

 
# 39 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"



 



  

 


  
typedef enum
{ 
  FLASH_BUSY = 1,
  FLASH_ERROR_RD,
  FLASH_ERROR_PGS,
  FLASH_ERROR_PGP,
  FLASH_ERROR_PGA,
  FLASH_ERROR_WRP,
  FLASH_ERROR_PROGRAM,
  FLASH_ERROR_OPERATION,
  FLASH_COMPLETE
}FLASH_Status;

 



   



  
# 90 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


# 108 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


  



  











  



 
# 155 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"

# 168 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"
































  



  
# 230 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"




 



 





 



  
# 274 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"




 



 


  
 





  



  





  



  





  




  





 
  


   
# 334 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


 
  


 





 



  





  



  
# 374 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


 



 







  



  







  



  



  



  



  



  




  




  

 
  
 
 
void FLASH_SetLatency(uint32_t FLASH_Latency);
void FLASH_PrefetchBufferCmd(FunctionalState NewState);
void FLASH_InstructionCacheCmd(FunctionalState NewState);
void FLASH_DataCacheCmd(FunctionalState NewState);
void FLASH_InstructionCacheReset(void);
void FLASH_DataCacheReset(void);

    
void         FLASH_Unlock(void);
void         FLASH_Lock(void);
FLASH_Status FLASH_EraseSector(uint32_t FLASH_Sector, uint8_t VoltageRange);
FLASH_Status FLASH_EraseAllSectors(uint8_t VoltageRange);
FLASH_Status FLASH_EraseAllBank1Sectors(uint8_t VoltageRange);
FLASH_Status FLASH_EraseAllBank2Sectors(uint8_t VoltageRange);
FLASH_Status FLASH_ProgramDoubleWord(uint32_t Address, uint64_t Data);
FLASH_Status FLASH_ProgramWord(uint32_t Address, uint32_t Data);
FLASH_Status FLASH_ProgramHalfWord(uint32_t Address, uint16_t Data);
FLASH_Status FLASH_ProgramByte(uint32_t Address, uint8_t Data);

  
void         FLASH_OB_Unlock(void);
void         FLASH_OB_Lock(void);
void         FLASH_OB_WRPConfig(uint32_t OB_WRP, FunctionalState NewState);
void         FLASH_OB_WRP1Config(uint32_t OB_WRP, FunctionalState NewState);
void         FLASH_OB_PCROPSelectionConfig(uint8_t OB_PcROP);
void         FLASH_OB_PCROPConfig(uint32_t OB_PCROP, FunctionalState NewState);
void         FLASH_OB_PCROP1Config(uint32_t OB_PCROP, FunctionalState NewState);
void         FLASH_OB_RDPConfig(uint8_t OB_RDP);
void         FLASH_OB_UserConfig(uint8_t OB_IWDG, uint8_t OB_STOP, uint8_t OB_STDBY);
void         FLASH_OB_BORConfig(uint8_t OB_BOR);
void         FLASH_OB_BootConfig(uint8_t OB_BOOT);
FLASH_Status FLASH_OB_Launch(void);
uint8_t      FLASH_OB_GetUser(void);
uint16_t     FLASH_OB_GetWRP(void);
uint16_t     FLASH_OB_GetWRP1(void);
uint16_t     FLASH_OB_GetPCROP(void);
uint16_t     FLASH_OB_GetPCROP1(void);
FlagStatus   FLASH_OB_GetRDP(void);
uint8_t      FLASH_OB_GetBOR(void);

 
void         FLASH_ITConfig(uint32_t FLASH_IT, FunctionalState NewState);
FlagStatus   FLASH_GetFlagStatus(uint32_t FLASH_FLAG);
void         FLASH_ClearFlag(uint32_t FLASH_FLAG);
FLASH_Status FLASH_GetStatus(void);
FLASH_Status FLASH_WaitForLastOperation(void);









  



  

 
# 40 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



 



  

 

# 61 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



    
typedef enum
{ 
  GPIO_Mode_IN   = 0x00,  
  GPIO_Mode_OUT  = 0x01,  
  GPIO_Mode_AF   = 0x02,  
  GPIO_Mode_AN   = 0x03   
}GPIOMode_TypeDef;





   
typedef enum
{ 
  GPIO_OType_PP = 0x00,
  GPIO_OType_OD = 0x01
}GPIOOType_TypeDef;





   
typedef enum
{ 
  GPIO_Low_Speed     = 0x00,  
  GPIO_Medium_Speed  = 0x01,  
  GPIO_Fast_Speed    = 0x02,  
  GPIO_High_Speed    = 0x03   
}GPIOSpeed_TypeDef;

 




  





  
typedef enum
{ 
  GPIO_PuPd_NOPULL = 0x00,
  GPIO_PuPd_UP     = 0x01,
  GPIO_PuPd_DOWN   = 0x02
}GPIOPuPd_TypeDef;





  
typedef enum
{ 
  Bit_RESET = 0,
  Bit_SET
}BitAction;





  
typedef struct
{
  uint32_t GPIO_Pin;              
 

  GPIOMode_TypeDef GPIO_Mode;     
 

  GPIOSpeed_TypeDef GPIO_Speed;   
 

  GPIOOType_TypeDef GPIO_OType;   
 

  GPIOPuPd_TypeDef GPIO_PuPd;     
 
}GPIO_InitTypeDef;

 



  



  
# 176 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"

# 195 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


  




  
# 219 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"

# 236 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


  



  


  
# 254 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



  







  






  
# 283 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


  
# 295 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



  
# 305 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



  
# 322 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



  
# 334 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



  




  
# 357 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



  
# 378 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



  
# 398 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


  
# 409 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



  













  






 







  


# 464 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"

# 481 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"









# 514 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



















  



 
    








 



 

 
 

 
void GPIO_DeInit(GPIO_TypeDef* GPIOx);

 
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);

 
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);
void GPIO_ToggleBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);

 
void GPIO_PinAFConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_PinSource, uint8_t GPIO_AF);









  



  

 
# 41 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


























  

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



 



 

 



 

typedef struct
{
  uint32_t I2C_ClockSpeed;          
 

  uint16_t I2C_Mode;                
 

  uint16_t I2C_DutyCycle;           
 

  uint16_t I2C_OwnAddress1;         
 

  uint16_t I2C_Ack;                 
 

  uint16_t I2C_AcknowledgedAddress; 
 
}I2C_InitTypeDef;

 




 





 




 




 

# 104 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 







  



 







 



 







 



 







  



 

# 178 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 







  



 







 



 







  



 







  



 

# 248 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



# 258 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 



 

# 277 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



 

# 296 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



# 310 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 





 








 
 

























 

 


 





























 

  
 


 
 

 







 

























 

    
 



 



 



























 

  
 

 


 
 


 






 

# 516 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 




 



 




 



 

 
  

 
void I2C_DeInit(I2C_TypeDef* I2Cx);

 
void I2C_Init(I2C_TypeDef* I2Cx, I2C_InitTypeDef* I2C_InitStruct);
void I2C_StructInit(I2C_InitTypeDef* I2C_InitStruct);
void I2C_Cmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_DigitalFilterConfig(I2C_TypeDef* I2Cx, uint16_t I2C_DigitalFilter);
void I2C_AnalogFilterCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTART(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTOP(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_Send7bitAddress(I2C_TypeDef* I2Cx, uint8_t Address, uint8_t I2C_Direction);
void I2C_AcknowledgeConfig(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, uint8_t Address);
void I2C_DualAddressCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GeneralCallCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_SoftwareResetCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_StretchClockCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_FastModeDutyCycleConfig(I2C_TypeDef* I2Cx, uint16_t I2C_DutyCycle);
void I2C_NACKPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_NACKPosition);
void I2C_SMBusAlertConfig(I2C_TypeDef* I2Cx, uint16_t I2C_SMBusAlert);
void I2C_ARPCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);

  
void I2C_SendData(I2C_TypeDef* I2Cx, uint8_t Data);
uint8_t I2C_ReceiveData(I2C_TypeDef* I2Cx);

  
void I2C_TransmitPEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_PECPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_PECPosition);
void I2C_CalculatePEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
uint8_t I2C_GetPEC(I2C_TypeDef* I2Cx);

 
void I2C_DMACmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_DMALastTransferCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);

 
uint16_t I2C_ReadRegister(I2C_TypeDef* I2Cx, uint8_t I2C_Register);
void I2C_ITConfig(I2C_TypeDef* I2Cx, uint16_t I2C_IT, FunctionalState NewState);




















































































 





 
ErrorStatus I2C_CheckEvent(I2C_TypeDef* I2Cx, uint32_t I2C_EVENT);




 
uint32_t I2C_GetLastEvent(I2C_TypeDef* I2Cx);




 
FlagStatus I2C_GetFlagStatus(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);


void I2C_ClearFlag(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);
ITStatus I2C_GetITStatus(I2C_TypeDef* I2Cx, uint32_t I2C_IT);
void I2C_ClearITPendingBit(I2C_TypeDef* I2Cx, uint32_t I2C_IT);









  



  

 
# 42 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_iwdg.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_iwdg.h"



 



 

 
 



 
  


 






 



 
# 83 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_iwdg.h"


 



 






 



 

 
 

 
void IWDG_WriteAccessCmd(uint16_t IWDG_WriteAccess);
void IWDG_SetPrescaler(uint8_t IWDG_Prescaler);
void IWDG_SetReload(uint16_t Reload);
void IWDG_ReloadCounter(void);

 
void IWDG_Enable(void);

 
FlagStatus IWDG_GetFlagStatus(uint16_t IWDG_FLAG);









 



 

 
# 43 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"


























  

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"



 



  

 
 



  



  
# 66 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"







 

  


 



 








 



 








 



 






# 122 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"


     




 





 



 
# 146 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"


 



 
# 161 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"

 













 



 

 
  

  
void PWR_DeInit(void);

  
void PWR_BackupAccessCmd(FunctionalState NewState);

  
void PWR_PVDLevelConfig(uint32_t PWR_PVDLevel);
void PWR_PVDCmd(FunctionalState NewState);

 




void PWR_WakeUpPinCmd(uint32_t PWR_WakeUpPinx, FunctionalState NewState);

  
void PWR_BackupRegulatorCmd(FunctionalState NewState);
void PWR_MainRegulatorModeConfig(uint32_t PWR_Regulator_Voltage);
void PWR_OverDriveCmd(FunctionalState NewState);
void PWR_OverDriveSWCmd(FunctionalState NewState);
void PWR_UnderDriveCmd(FunctionalState NewState);


void PWR_MainRegulatorUnderDriveCmd(FunctionalState NewState);
void PWR_LowRegulatorUnderDriveCmd(FunctionalState NewState);







  
void PWR_FlashPowerDownCmd(FunctionalState NewState);

  
void PWR_EnterSTOPMode(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry);
void PWR_EnterUnderDriveSTOPMode(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry);
void PWR_EnterSTANDBYMode(void);

  
FlagStatus PWR_GetFlagStatus(uint32_t PWR_FLAG);
void PWR_ClearFlag(uint32_t PWR_FLAG);









 



 

 
# 44 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"

























 

 







 
# 38 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"



 



  

 
typedef struct
{
  uint32_t SYSCLK_Frequency;  
  uint32_t HCLK_Frequency;    
  uint32_t PCLK1_Frequency;   
  uint32_t PCLK2_Frequency;   
}RCC_ClocksTypeDef;

 



 
  


 







  



 






 



 
# 96 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


 



 
# 114 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"

# 132 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"










  
  


 

# 157 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"
 



# 169 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 
# 190 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 
# 205 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 
# 220 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"

# 227 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"



  
  


 







  
  


 
# 311 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  

# 347 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"




 









 



 





 



 









     
    


 





 
# 428 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"

# 469 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"



 






 

# 493 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"




 






 




 
# 522 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


 





 






 



 






 



  
# 560 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"





 





 



    




 


# 624 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"



  
# 661 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"



  
  


   
# 677 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


  
























  
  


  
# 754 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


  
# 795 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"

 







  



 
# 820 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"
                                   





  
  


 
# 842 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"
                                   





  
  


 
# 867 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"

# 875 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"




  



  

 
  

 
void        RCC_DeInit(void);

 
void        RCC_HSEConfig(uint8_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void        RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void        RCC_HSICmd(FunctionalState NewState);
void        RCC_LSEConfig(uint8_t RCC_LSE);
void        RCC_LSICmd(FunctionalState NewState);

void        RCC_PLLCmd(FunctionalState NewState);


void        RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t PLLM, uint32_t PLLN, uint32_t PLLP, uint32_t PLLQ, uint32_t PLLR);






void        RCC_PLLI2SCmd(FunctionalState NewState);

# 921 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"
void        RCC_PLLI2SConfig(uint32_t PLLI2SM, uint32_t PLLI2SN, uint32_t PLLI2SP, uint32_t PLLI2SQ, uint32_t PLLI2SR);


void        RCC_PLLSAICmd(FunctionalState NewState);




void        RCC_PLLSAIConfig(uint32_t PLLSAIM, uint32_t PLLSAIN, uint32_t PLLSAIP, uint32_t PLLSAIQ);





void        RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void        RCC_MCO1Config(uint32_t RCC_MCO1Source, uint32_t RCC_MCO1Div);
void        RCC_MCO2Config(uint32_t RCC_MCO2Source, uint32_t RCC_MCO2Div);

 
void        RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t     RCC_GetSYSCLKSource(void);
void        RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void        RCC_PCLK1Config(uint32_t RCC_HCLK);
void        RCC_PCLK2Config(uint32_t RCC_HCLK);
void        RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);

 
void        RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void        RCC_RTCCLKCmd(FunctionalState NewState);
void        RCC_BackupResetCmd(FunctionalState NewState);


void        RCC_I2SCLKConfig(uint32_t RCC_I2SAPBx, uint32_t RCC_I2SCLKSource);

void        RCC_SAICLKConfig(uint32_t RCC_SAIInstance, uint32_t RCC_SAICLKSource);
# 962 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"










void        RCC_SAIPLLI2SClkDivConfig(uint32_t RCC_PLLI2SDivQ);
void        RCC_SAIPLLSAIClkDivConfig(uint32_t RCC_PLLSAIDivQ);






void        RCC_LTDCCLKDivConfig(uint32_t RCC_PLLSAIDivR);
void        RCC_TIMCLKPresConfig(uint32_t RCC_TIMCLKPrescaler);

void        RCC_AHB1PeriphClockCmd(uint32_t RCC_AHB1Periph, FunctionalState NewState);
void        RCC_AHB2PeriphClockCmd(uint32_t RCC_AHB2Periph, FunctionalState NewState);
void        RCC_AHB3PeriphClockCmd(uint32_t RCC_AHB3Periph, FunctionalState NewState);
void        RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void        RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);

void        RCC_AHB1PeriphResetCmd(uint32_t RCC_AHB1Periph, FunctionalState NewState);
void        RCC_AHB2PeriphResetCmd(uint32_t RCC_AHB2Periph, FunctionalState NewState);
void        RCC_AHB3PeriphResetCmd(uint32_t RCC_AHB3Periph, FunctionalState NewState);
void        RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void        RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);

void        RCC_AHB1PeriphClockLPModeCmd(uint32_t RCC_AHB1Periph, FunctionalState NewState);
void        RCC_AHB2PeriphClockLPModeCmd(uint32_t RCC_AHB2Periph, FunctionalState NewState);
void        RCC_AHB3PeriphClockLPModeCmd(uint32_t RCC_AHB3Periph, FunctionalState NewState);
void        RCC_APB1PeriphClockLPModeCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void        RCC_APB2PeriphClockLPModeCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);

 
void        RCC_LSEModeConfig(uint8_t RCC_Mode);

 




 

void        RCC_48MHzClockSourceConfig(uint8_t RCC_ClockSource);
void        RCC_SDIOClockSourceConfig(uint8_t RCC_ClockSource);


 

void        RCC_AHB1ClockGatingCmd(uint32_t RCC_AHB1ClockGating, FunctionalState NewState);
void        RCC_SPDIFRXClockSourceConfig(uint8_t RCC_ClockSource);
void        RCC_CECClockSourceConfig(uint8_t RCC_ClockSource);


 

void        RCC_FMPI2C1ClockSourceConfig(uint32_t RCC_ClockSource);


 
# 1035 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"

# 1045 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"
 
void        RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);
FlagStatus  RCC_GetFlagStatus(uint8_t RCC_FLAG);
void        RCC_ClearFlag(void);
ITStatus    RCC_GetITStatus(uint8_t RCC_IT);
void        RCC_ClearITPendingBit(uint8_t RCC_IT);









  



  

 
# 45 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



 



  

 



  
typedef struct
{
  uint32_t RTC_HourFormat;   
 
  
  uint32_t RTC_AsynchPrediv; 
 
  
  uint32_t RTC_SynchPrediv;  
 
}RTC_InitTypeDef;



 
typedef struct
{
  uint8_t RTC_Hours;    


 

  uint8_t RTC_Minutes;  
 
  
  uint8_t RTC_Seconds;  
 

  uint8_t RTC_H12;      
 
}RTC_TimeTypeDef; 



 
typedef struct
{
  uint8_t RTC_WeekDay; 
 
  
  uint8_t RTC_Month;   
 

  uint8_t RTC_Date;     
 
  
  uint8_t RTC_Year;     
 
}RTC_DateTypeDef;



 
typedef struct
{
  RTC_TimeTypeDef RTC_AlarmTime;      

  uint32_t RTC_AlarmMask;            
 

  uint32_t RTC_AlarmDateWeekDaySel;  
 
  
  uint8_t RTC_AlarmDateWeekDay;      



 
}RTC_AlarmTypeDef;

 



  




  






  



  

 


  




  




  



  







  



  






  



  




  



  

 
# 211 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  
  
# 234 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  




  
# 250 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  




  








  




  
# 280 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  







  

  

  
# 349 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  





  



  
# 379 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  






  



  




 







  



  






  




  








  

 

  






  



  
# 459 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"
                                          


  



  
# 474 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  




 



  











  



  
# 515 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  


# 535 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  
# 566 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



 

  

  
# 582 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"







 



  






 



  




 




  



  







  



  







  



  






  



  




 



 

# 704 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  






  



  
# 745 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  
# 759 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"









  



  





  



  

 
  

 
ErrorStatus RTC_DeInit(void);

 
ErrorStatus RTC_Init(RTC_InitTypeDef* RTC_InitStruct);
void RTC_StructInit(RTC_InitTypeDef* RTC_InitStruct);
void RTC_WriteProtectionCmd(FunctionalState NewState);
ErrorStatus RTC_EnterInitMode(void);
void RTC_ExitInitMode(void);
ErrorStatus RTC_WaitForSynchro(void);
ErrorStatus RTC_RefClockCmd(FunctionalState NewState);
void RTC_BypassShadowCmd(FunctionalState NewState);

 
ErrorStatus RTC_SetTime(uint32_t RTC_Format, RTC_TimeTypeDef* RTC_TimeStruct);
void RTC_TimeStructInit(RTC_TimeTypeDef* RTC_TimeStruct);
void RTC_GetTime(uint32_t RTC_Format, RTC_TimeTypeDef* RTC_TimeStruct);
uint32_t RTC_GetSubSecond(void);
ErrorStatus RTC_SetDate(uint32_t RTC_Format, RTC_DateTypeDef* RTC_DateStruct);
void RTC_DateStructInit(RTC_DateTypeDef* RTC_DateStruct);
void RTC_GetDate(uint32_t RTC_Format, RTC_DateTypeDef* RTC_DateStruct);

 
void RTC_SetAlarm(uint32_t RTC_Format, uint32_t RTC_Alarm, RTC_AlarmTypeDef* RTC_AlarmStruct);
void RTC_AlarmStructInit(RTC_AlarmTypeDef* RTC_AlarmStruct);
void RTC_GetAlarm(uint32_t RTC_Format, uint32_t RTC_Alarm, RTC_AlarmTypeDef* RTC_AlarmStruct);
ErrorStatus RTC_AlarmCmd(uint32_t RTC_Alarm, FunctionalState NewState);
void RTC_AlarmSubSecondConfig(uint32_t RTC_Alarm, uint32_t RTC_AlarmSubSecondValue, uint32_t RTC_AlarmSubSecondMask);
uint32_t RTC_GetAlarmSubSecond(uint32_t RTC_Alarm);

 
void RTC_WakeUpClockConfig(uint32_t RTC_WakeUpClock);
void RTC_SetWakeUpCounter(uint32_t RTC_WakeUpCounter);
uint32_t RTC_GetWakeUpCounter(void);
ErrorStatus RTC_WakeUpCmd(FunctionalState NewState);

 
void RTC_DayLightSavingConfig(uint32_t RTC_DayLightSaving, uint32_t RTC_StoreOperation);
uint32_t RTC_GetStoreOperation(void);

 
void RTC_OutputConfig(uint32_t RTC_Output, uint32_t RTC_OutputPolarity);

 
ErrorStatus RTC_CoarseCalibConfig(uint32_t RTC_CalibSign, uint32_t Value);
ErrorStatus RTC_CoarseCalibCmd(FunctionalState NewState);
void RTC_CalibOutputCmd(FunctionalState NewState);
void RTC_CalibOutputConfig(uint32_t RTC_CalibOutput);
ErrorStatus RTC_SmoothCalibConfig(uint32_t RTC_SmoothCalibPeriod, 
                                  uint32_t RTC_SmoothCalibPlusPulses,
                                  uint32_t RTC_SmouthCalibMinusPulsesValue);

 
void RTC_TimeStampCmd(uint32_t RTC_TimeStampEdge, FunctionalState NewState);
void RTC_GetTimeStamp(uint32_t RTC_Format, RTC_TimeTypeDef* RTC_StampTimeStruct,
                                      RTC_DateTypeDef* RTC_StampDateStruct);
uint32_t RTC_GetTimeStampSubSecond(void);

 
void RTC_TamperTriggerConfig(uint32_t RTC_Tamper, uint32_t RTC_TamperTrigger);
void RTC_TamperCmd(uint32_t RTC_Tamper, FunctionalState NewState);
void RTC_TamperFilterConfig(uint32_t RTC_TamperFilter);
void RTC_TamperSamplingFreqConfig(uint32_t RTC_TamperSamplingFreq);
void RTC_TamperPinsPrechargeDuration(uint32_t RTC_TamperPrechargeDuration);
void RTC_TimeStampOnTamperDetectionCmd(FunctionalState NewState);
void RTC_TamperPullUpCmd(FunctionalState NewState);

 
void RTC_WriteBackupRegister(uint32_t RTC_BKP_DR, uint32_t Data);
uint32_t RTC_ReadBackupRegister(uint32_t RTC_BKP_DR);


 
void RTC_TamperPinSelection(uint32_t RTC_TamperPin);
void RTC_TimeStampPinSelection(uint32_t RTC_TimeStampPin);
void RTC_OutputTypeConfig(uint32_t RTC_OutputType);

 
ErrorStatus RTC_SynchroShiftConfig(uint32_t RTC_ShiftAdd1S, uint32_t RTC_ShiftSubFS);

 
void RTC_ITConfig(uint32_t RTC_IT, FunctionalState NewState);
FlagStatus RTC_GetFlagStatus(uint32_t RTC_FLAG);
void RTC_ClearFlag(uint32_t RTC_FLAG);
ITStatus RTC_GetITStatus(uint32_t RTC_IT);
void RTC_ClearITPendingBit(uint32_t RTC_IT);









  



  

 
# 46 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"



 



 

 

typedef struct
{
  uint32_t SDIO_ClockEdge;            
 

  uint32_t SDIO_ClockBypass;          

 

  uint32_t SDIO_ClockPowerSave;       

 

  uint32_t SDIO_BusWide;              
 

  uint32_t SDIO_HardwareFlowControl;  
 

  uint8_t SDIO_ClockDiv;              
 
                                           
} SDIO_InitTypeDef;

typedef struct
{
  uint32_t SDIO_Argument;  


 

  uint32_t SDIO_CmdIndex;   

  uint32_t SDIO_Response;  
 

  uint32_t SDIO_Wait;      
 

  uint32_t SDIO_CPSM;      

 
} SDIO_CmdInitTypeDef;

typedef struct
{
  uint32_t SDIO_DataTimeOut;     

  uint32_t SDIO_DataLength;      
 
  uint32_t SDIO_DataBlockSize;  
 
 
  uint32_t SDIO_TransferDir;    

 
 
  uint32_t SDIO_TransferMode;   
 
 
  uint32_t SDIO_DPSM;           

 
} SDIO_DataInitTypeDef;


 



 



 







 



 







  



 







 



 









 



 







 



 






  




 

# 225 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


  



 




 



 

# 248 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


 



 








 



 






  



 

# 286 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


 



 




 



 

# 333 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


 



 







 



 







 



 






 



 

# 424 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"



# 451 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"





 



 







 



 

 
 
 
void SDIO_DeInit(void);

 
void SDIO_Init(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_StructInit(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_ClockCmd(FunctionalState NewState);
void SDIO_SetPowerState(uint32_t SDIO_PowerState);
uint32_t SDIO_GetPowerState(void);

 
void SDIO_SendCommand(SDIO_CmdInitTypeDef *SDIO_CmdInitStruct);
void SDIO_CmdStructInit(SDIO_CmdInitTypeDef* SDIO_CmdInitStruct);
uint8_t SDIO_GetCommandResponse(void);
uint32_t SDIO_GetResponse(uint32_t SDIO_RESP);

 
void SDIO_DataConfig(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
void SDIO_DataStructInit(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
uint32_t SDIO_GetDataCounter(void);
uint32_t SDIO_ReadData(void);
void SDIO_WriteData(uint32_t Data);
uint32_t SDIO_GetFIFOCount(void);

 
void SDIO_StartSDIOReadWait(FunctionalState NewState);
void SDIO_StopSDIOReadWait(FunctionalState NewState);
void SDIO_SetSDIOReadWaitMode(uint32_t SDIO_ReadWaitMode);
void SDIO_SetSDIOOperation(FunctionalState NewState);
void SDIO_SendSDIOSuspendCmd(FunctionalState NewState);

 
void SDIO_CommandCompletionCmd(FunctionalState NewState);
void SDIO_CEATAITCmd(FunctionalState NewState);
void SDIO_SendCEATACmd(FunctionalState NewState);

 
void SDIO_DMACmd(FunctionalState NewState);

 
void SDIO_ITConfig(uint32_t SDIO_IT, FunctionalState NewState);
FlagStatus SDIO_GetFlagStatus(uint32_t SDIO_FLAG);
void SDIO_ClearFlag(uint32_t SDIO_FLAG);
ITStatus SDIO_GetITStatus(uint32_t SDIO_IT);
void SDIO_ClearITPendingBit(uint32_t SDIO_IT);









 



 

 
# 47 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


























  

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"



 



  

 



 

typedef struct
{
  uint16_t SPI_Direction;           
 

  uint16_t SPI_Mode;                
 

  uint16_t SPI_DataSize;            
 

  uint16_t SPI_CPOL;                
 

  uint16_t SPI_CPHA;                
 

  uint16_t SPI_NSS;                 

 
 
  uint16_t SPI_BaudRatePrescaler;   



 

  uint16_t SPI_FirstBit;            
 

  uint16_t SPI_CRCPolynomial;        
}SPI_InitTypeDef;



 

typedef struct
{

  uint16_t I2S_Mode;         
 

  uint16_t I2S_Standard;     
 

  uint16_t I2S_DataFormat;   
 

  uint16_t I2S_MCLKOutput;   
 

  uint32_t I2S_AudioFreq;    
 

  uint16_t I2S_CPOL;         
 
}I2S_InitTypeDef;

 



 

# 125 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"

# 134 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"















 
  
# 159 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 



 







 



 







  



 







 



 







 



 







  



 

# 243 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


  



 







 



 

# 271 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 
  



 

# 290 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 
  


 

# 306 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 



 







 



 

# 336 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"






 
            


 







 



 






 



 







 



 






 



 







 



 























 



 

# 443 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"

# 450 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 



 




 



 

# 486 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 
  


 

 
  

  
void SPI_I2S_DeInit(SPI_TypeDef* SPIx);

 
void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct);
void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct);
void SPI_StructInit(SPI_InitTypeDef* SPI_InitStruct);
void I2S_StructInit(I2S_InitTypeDef* I2S_InitStruct);
void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void I2S_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_DataSizeConfig(SPI_TypeDef* SPIx, uint16_t SPI_DataSize);
void SPI_BiDirectionalLineConfig(SPI_TypeDef* SPIx, uint16_t SPI_Direction);
void SPI_NSSInternalSoftwareConfig(SPI_TypeDef* SPIx, uint16_t SPI_NSSInternalSoft);
void SPI_SSOutputCmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_TIModeCmd(SPI_TypeDef* SPIx, FunctionalState NewState);

void I2S_FullDuplexConfig(SPI_TypeDef* I2Sxext, I2S_InitTypeDef* I2S_InitStruct);

  
void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data);
uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx);

 
void SPI_CalculateCRC(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_TransmitCRC(SPI_TypeDef* SPIx);
uint16_t SPI_GetCRC(SPI_TypeDef* SPIx, uint8_t SPI_CRC);
uint16_t SPI_GetCRCPolynomial(SPI_TypeDef* SPIx);

 
void SPI_I2S_DMACmd(SPI_TypeDef* SPIx, uint16_t SPI_I2S_DMAReq, FunctionalState NewState);

 
void SPI_I2S_ITConfig(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT, FunctionalState NewState);
FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
void SPI_I2S_ClearFlag(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
ITStatus SPI_I2S_GetITStatus(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);
void SPI_I2S_ClearITPendingBit(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);









 



 

 
# 48 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"



 



  

 
 


  
# 160 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"



  
# 175 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"

# 187 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"
                                         


  




  
# 228 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"


  




  

















# 259 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"







# 273 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"

# 281 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"

# 289 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"


  




  







  



  

 
  
 
void       SYSCFG_DeInit(void);
void       SYSCFG_MemoryRemapConfig(uint8_t SYSCFG_MemoryRemap);
void       SYSCFG_MemorySwappingBank(FunctionalState NewState);
void       SYSCFG_EXTILineConfig(uint8_t EXTI_PortSourceGPIOx, uint8_t EXTI_PinSourcex);
void       SYSCFG_ETH_MediaInterfaceConfig(uint32_t SYSCFG_ETH_MediaInterface); 
void       SYSCFG_CompensationCellCmd(FunctionalState NewState); 
FlagStatus SYSCFG_GetCompensationCellStatus(void);
# 339 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"





  



  

 
# 49 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



 



  

 




 

typedef struct
{
  uint16_t TIM_Prescaler;         
 

  uint16_t TIM_CounterMode;       
 

  uint32_t TIM_Period;            

  

  uint16_t TIM_ClockDivision;     
 

  uint8_t TIM_RepetitionCounter;  






 
} TIM_TimeBaseInitTypeDef; 



 

typedef struct
{
  uint16_t TIM_OCMode;        
 

  uint16_t TIM_OutputState;   
 

  uint16_t TIM_OutputNState;  

 

  uint32_t TIM_Pulse;         
 

  uint16_t TIM_OCPolarity;    
 

  uint16_t TIM_OCNPolarity;   

 

  uint16_t TIM_OCIdleState;   

 

  uint16_t TIM_OCNIdleState;  

 
} TIM_OCInitTypeDef;



 

typedef struct
{

  uint16_t TIM_Channel;      
 

  uint16_t TIM_ICPolarity;   
 

  uint16_t TIM_ICSelection;  
 

  uint16_t TIM_ICPrescaler;  
 

  uint16_t TIM_ICFilter;     
 
} TIM_ICInitTypeDef;




 

typedef struct
{

  uint16_t TIM_OSSRState;        
 

  uint16_t TIM_OSSIState;        
 

  uint16_t TIM_LOCKLevel;        
  

  uint16_t TIM_DeadTime;         

 

  uint16_t TIM_Break;            
 

  uint16_t TIM_BreakPolarity;    
 

  uint16_t TIM_AutomaticOutput;  
 
} TIM_BDTRInitTypeDef;

 



 

# 189 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
                                          
# 202 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
                                     
 
# 212 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
 
# 219 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
 


 
# 231 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
                                






 

# 260 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


 



 







  



 





                                 




                                 







  



 

# 309 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


 



 

# 327 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







 



 
  






 



 







  



 







  



 







  



 







  



 







  



 







  



 







  



 

# 451 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







 



 







  



 







  



 







  



 

# 513 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

# 529 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

# 545 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

# 562 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"

# 571 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

# 619 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

# 663 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

# 679 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



  



 

# 696 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

# 724 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







  



  






 



 







  



 







  



 

# 785 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  




 

# 803 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
  


  



 

# 818 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







  



 





                                     


  



 







  



 

# 879 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

# 895 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







  


 














# 937 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



  


 

# 969 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



  



 




  



 




  



 

# 1014 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


 



 

 
  

 
void TIM_DeInit(TIM_TypeDef* TIMx);
void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_PrescalerConfig(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode);
void TIM_CounterModeConfig(TIM_TypeDef* TIMx, uint16_t TIM_CounterMode);
void TIM_SetCounter(TIM_TypeDef* TIMx, uint32_t Counter);
void TIM_SetAutoreload(TIM_TypeDef* TIMx, uint32_t Autoreload);
uint32_t TIM_GetCounter(TIM_TypeDef* TIMx);
uint16_t TIM_GetPrescaler(TIM_TypeDef* TIMx);
void TIM_UpdateDisableConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, uint16_t TIM_UpdateSource);
void TIM_ARRPreloadConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectOnePulseMode(TIM_TypeDef* TIMx, uint16_t TIM_OPMode);
void TIM_SetClockDivision(TIM_TypeDef* TIMx, uint16_t TIM_CKD);
void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_OC1Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC2Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC3Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC4Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_SelectOCxM(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_OCMode);
void TIM_SetCompare1(TIM_TypeDef* TIMx, uint32_t Compare1);
void TIM_SetCompare2(TIM_TypeDef* TIMx, uint32_t Compare2);
void TIM_SetCompare3(TIM_TypeDef* TIMx, uint32_t Compare3);
void TIM_SetCompare4(TIM_TypeDef* TIMx, uint32_t Compare4);
void TIM_ForcedOC1Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC2Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC3Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC2PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC3PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC4PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC1FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC2FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC3FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC4FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_ClearOC1Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC2Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC3Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC4Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC1NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC2PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC2NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC3PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC4PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_CCxCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx);
void TIM_CCxNCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCxN);

 
void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
uint32_t TIM_GetCapture1(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture2(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture3(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture4(TIM_TypeDef* TIMx);
void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC2Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC4Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);

 
void TIM_BDTRConfig(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct);
void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct);
void TIM_CtrlPWMOutputs(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCOM(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_ITConfig(TIM_TypeDef* TIMx, uint16_t TIM_IT, FunctionalState NewState);
void TIM_GenerateEvent(TIM_TypeDef* TIMx, uint16_t TIM_EventSource);
FlagStatus TIM_GetFlagStatus(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
void TIM_ClearFlag(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
ITStatus TIM_GetITStatus(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_ClearITPendingBit(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_DMAConfig(TIM_TypeDef* TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength);
void TIM_DMACmd(TIM_TypeDef* TIMx, uint16_t TIM_DMASource, FunctionalState NewState);
void TIM_SelectCCDMA(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_InternalClockConfig(TIM_TypeDef* TIMx);
void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter);
void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                             uint16_t ExtTRGFilter);
void TIM_ETRClockMode2Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, 
                             uint16_t TIM_ExtTRGPolarity, uint16_t ExtTRGFilter);

 
void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_TRGOSource);
void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_SlaveMode);
void TIM_SelectMasterSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_MasterSlaveMode);
void TIM_ETRConfig(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter);

    
void TIM_EncoderInterfaceConfig(TIM_TypeDef* TIMx, uint16_t TIM_EncoderMode,
                                uint16_t TIM_IC1Polarity, uint16_t TIM_IC2Polarity);
void TIM_SelectHallSensor(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_RemapConfig(TIM_TypeDef* TIMx, uint16_t TIM_Remap);









  



 

 
# 50 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


























  

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"



 



  

  



  
  
typedef struct
{
  uint32_t USART_BaudRate;            



 

  uint16_t USART_WordLength;          
 

  uint16_t USART_StopBits;            
 

  uint16_t USART_Parity;              




 
 
  uint16_t USART_Mode;                
 

  uint16_t USART_HardwareFlowControl; 

 
} USART_InitTypeDef;



  
  
typedef struct
{

  uint16_t USART_Clock;   
 

  uint16_t USART_CPOL;    
 

  uint16_t USART_CPHA;    
 

  uint16_t USART_LastBit; 

 
} USART_ClockInitTypeDef;

 



  
  
# 120 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"








  
  


                                    




  



  
  
# 151 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


  



  
  
# 165 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


  



  
  





  



  
# 192 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


  



  






  



 
  






  



 







 



 







  



 
  
# 259 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"



 



 

# 280 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


 



 







  



 







 



 
  







 



 







  



 

# 352 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"
                              








  



  

 
   

  
void USART_DeInit(USART_TypeDef* USARTx);

 
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler);
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState);

  
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data);
uint16_t USART_ReceiveData(USART_TypeDef* USARTx);

 
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address);
void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp);
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState);

 
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength);
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SendBreak(USART_TypeDef* USARTx);

 
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState);

 
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime);

 
void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode);
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState);

 
void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState);

 
void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG);
void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG);
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT);
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT);









  



  

 
# 51 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_wwdg.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_wwdg.h"



 



  

 
 



  
  


 
  
# 69 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_wwdg.h"



  



  

 
 
  
   
void WWDG_DeInit(void);

 
void WWDG_SetPrescaler(uint32_t WWDG_Prescaler);
void WWDG_SetWindowValue(uint8_t WindowValue);
void WWDG_EnableIT(void);
void WWDG_SetCounter(uint8_t Counter);

 
void WWDG_Enable(uint8_t Counter);

 
FlagStatus WWDG_GetFlagStatus(void);
void WWDG_ClearFlag(void);









  



  

 
# 52 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"



 



 

 



 

typedef struct
{
  uint8_t NVIC_IRQChannel;                    


 

  uint8_t NVIC_IRQChannelPreemptionPriority;  


 

  uint8_t NVIC_IRQChannelSubPriority;         


 

  FunctionalState NVIC_IRQChannelCmd;         

    
} NVIC_InitTypeDef;
 
 



 



 







 



 

# 104 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"


 



 

# 122 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"















 



 







 



 

 
 

void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup);
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);









 



 

 
# 53 ".\\SCR\\stm32f4xx_conf.h"

# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"



 



  

 



  
typedef struct
{
  uint32_t CRYP_AlgoDir;   
 
  uint32_t CRYP_AlgoMode;  

 
  uint32_t CRYP_DataType;  
  
  uint32_t CRYP_KeySize;   

 
}CRYP_InitTypeDef;



  
typedef struct
{
  uint32_t CRYP_Key0Left;   
  uint32_t CRYP_Key0Right;  
  uint32_t CRYP_Key1Left;   
  uint32_t CRYP_Key1Right;  
  uint32_t CRYP_Key2Left;   
  uint32_t CRYP_Key2Right;  
  uint32_t CRYP_Key3Left;   
  uint32_t CRYP_Key3Right;  
}CRYP_KeyInitTypeDef;


  
typedef struct
{
  uint32_t CRYP_IV0Left;   
  uint32_t CRYP_IV0Right;  
  uint32_t CRYP_IV1Left;   
  uint32_t CRYP_IV1Right;  
}CRYP_IVInitTypeDef;



  
typedef struct
{
   
  uint32_t CR_CurrentConfig;
   
  uint32_t CRYP_IV0LR;
  uint32_t CRYP_IV0RR;
  uint32_t CRYP_IV1LR;
  uint32_t CRYP_IV1RR;
   
  uint32_t CRYP_K0LR;
  uint32_t CRYP_K0RR;
  uint32_t CRYP_K1LR;
  uint32_t CRYP_K1RR;
  uint32_t CRYP_K2LR;
  uint32_t CRYP_K2RR;
  uint32_t CRYP_K3LR;
  uint32_t CRYP_K3RR;
  uint32_t CRYP_CSGCMCCMR[8];
  uint32_t CRYP_CSGCMR[8];
}CRYP_Context;


 



 



 







  
 


 

 



 



 
# 155 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"

# 166 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


  



 

 












  



 
# 200 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


 
                                     


 
# 213 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


 



 
# 232 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"

# 240 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


 



 







 



 





 



 





  



  

 
 

 
void CRYP_DeInit(void);

 
void CRYP_Init(CRYP_InitTypeDef* CRYP_InitStruct);
void CRYP_StructInit(CRYP_InitTypeDef* CRYP_InitStruct);
void CRYP_KeyInit(CRYP_KeyInitTypeDef* CRYP_KeyInitStruct);
void CRYP_KeyStructInit(CRYP_KeyInitTypeDef* CRYP_KeyInitStruct);
void CRYP_IVInit(CRYP_IVInitTypeDef* CRYP_IVInitStruct);
void CRYP_IVStructInit(CRYP_IVInitTypeDef* CRYP_IVInitStruct);
void CRYP_Cmd(FunctionalState NewState);
void CRYP_PhaseConfig(uint32_t CRYP_Phase);
void CRYP_FIFOFlush(void);
 
void CRYP_DataIn(uint32_t Data);
uint32_t CRYP_DataOut(void);

 
ErrorStatus CRYP_SaveContext(CRYP_Context* CRYP_ContextSave,
                             CRYP_KeyInitTypeDef* CRYP_KeyInitStruct);
void CRYP_RestoreContext(CRYP_Context* CRYP_ContextRestore);

 
void CRYP_DMACmd(uint8_t CRYP_DMAReq, FunctionalState NewState);

 
void CRYP_ITConfig(uint8_t CRYP_IT, FunctionalState NewState);
ITStatus CRYP_GetITStatus(uint8_t CRYP_IT);
FunctionalState CRYP_GetCmdStatus(void);
FlagStatus CRYP_GetFlagStatus(uint8_t CRYP_FLAG);

 
ErrorStatus CRYP_AES_ECB(uint8_t Mode,
                         uint8_t *Key, uint16_t Keysize,
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

ErrorStatus CRYP_AES_CBC(uint8_t Mode,
                         uint8_t InitVectors[16],
                         uint8_t *Key, uint16_t Keysize,
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

ErrorStatus CRYP_AES_CTR(uint8_t Mode,
                         uint8_t InitVectors[16],
                         uint8_t *Key, uint16_t Keysize,
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

ErrorStatus CRYP_AES_GCM(uint8_t Mode, uint8_t InitVectors[16],
                         uint8_t *Key, uint16_t Keysize,
                         uint8_t *Input, uint32_t ILength,
                         uint8_t *Header, uint32_t HLength,
                         uint8_t *Output, uint8_t *AuthTAG);

ErrorStatus CRYP_AES_CCM(uint8_t Mode, 
                         uint8_t* Nonce, uint32_t NonceSize,
                         uint8_t* Key, uint16_t Keysize,
                         uint8_t* Input, uint32_t ILength,
                         uint8_t* Header, uint32_t HLength, uint8_t *HBuffer,
                         uint8_t* Output,
                         uint8_t* AuthTAG, uint32_t TAGSize);

 
ErrorStatus CRYP_TDES_ECB(uint8_t Mode,
                           uint8_t Key[24], 
                           uint8_t *Input, uint32_t Ilength,
                           uint8_t *Output);

ErrorStatus CRYP_TDES_CBC(uint8_t Mode,
                          uint8_t Key[24],
                          uint8_t InitVectors[8],
                          uint8_t *Input, uint32_t Ilength,
                          uint8_t *Output);

 
ErrorStatus CRYP_DES_ECB(uint8_t Mode,
                         uint8_t Key[8],
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

ErrorStatus CRYP_DES_CBC(uint8_t Mode,
                         uint8_t Key[8],
                         uint8_t InitVectors[8],
                         uint8_t *Input,uint32_t Ilength,
                         uint8_t *Output);









 



  

 
# 56 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_hash.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_hash.h"



 



  

 



  
typedef struct
{
  uint32_t HASH_AlgoSelection; 
 
  uint32_t HASH_AlgoMode;      
 
  uint32_t HASH_DataType;      

 
  uint32_t HASH_HMACKeyType;   
 
}HASH_InitTypeDef;



  
typedef struct
{
  uint32_t Data[8];      


 
} HASH_MsgDigest; 



  
typedef struct
{
  uint32_t HASH_IMR; 
  uint32_t HASH_STR;      
  uint32_t HASH_CR;     
  uint32_t HASH_CSR[54];       
}HASH_Context;

 



  



  











 



  







 



   











 



  







 



   




 



   





				   


 



   

















  



  

 
  
  
 
void HASH_DeInit(void);

 
void HASH_Init(HASH_InitTypeDef* HASH_InitStruct);
void HASH_StructInit(HASH_InitTypeDef* HASH_InitStruct);
void HASH_Reset(void);

 
void HASH_DataIn(uint32_t Data);
uint8_t HASH_GetInFIFOWordsNbr(void);
void HASH_SetLastWordValidBitsNbr(uint16_t ValidNumber);
void HASH_StartDigest(void);
void HASH_AutoStartDigest(FunctionalState NewState);
void HASH_GetDigest(HASH_MsgDigest* HASH_MessageDigest);

 
void HASH_SaveContext(HASH_Context* HASH_ContextSave);
void HASH_RestoreContext(HASH_Context* HASH_ContextRestore);

 
void HASH_DMACmd(FunctionalState NewState);

 
void HASH_ITConfig(uint32_t HASH_IT, FunctionalState NewState);
FlagStatus HASH_GetFlagStatus(uint32_t HASH_FLAG);
void HASH_ClearFlag(uint32_t HASH_FLAG);
ITStatus HASH_GetITStatus(uint32_t HASH_IT);
void HASH_ClearITPendingBit(uint32_t HASH_IT);

 
ErrorStatus HASH_SHA1(uint8_t *Input, uint32_t Ilen, uint8_t Output[20]);
ErrorStatus HMAC_SHA1(uint8_t *Key, uint32_t Keylen,
                      uint8_t *Input, uint32_t Ilen,
                      uint8_t Output[20]);

 
ErrorStatus HASH_MD5(uint8_t *Input, uint32_t Ilen, uint8_t Output[16]);
ErrorStatus HMAC_MD5(uint8_t *Key, uint32_t Keylen,
                     uint8_t *Input, uint32_t Ilen,
                     uint8_t Output[16]);









  



  

 
# 57 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rng.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rng.h"



 



  
# 106 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rng.h"









  



  

 
# 58 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"



 



 

 
# 57 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"



 
typedef struct
{
  uint16_t CAN_Prescaler;   
 
  
  uint8_t CAN_Mode;         
 

  uint8_t CAN_SJW;          


 

  uint8_t CAN_BS1;          

 

  uint8_t CAN_BS2;          
 
  
  FunctionalState CAN_TTCM; 
 
  
  FunctionalState CAN_ABOM;  
 

  FunctionalState CAN_AWUM;  
 

  FunctionalState CAN_NART;  
 

  FunctionalState CAN_RFLM;  
 

  FunctionalState CAN_TXFP;  
 
} CAN_InitTypeDef;



 
typedef struct
{
  uint16_t CAN_FilterIdHigh;         

 

  uint16_t CAN_FilterIdLow;          

 

  uint16_t CAN_FilterMaskIdHigh;     


 

  uint16_t CAN_FilterMaskIdLow;      


 

  uint16_t CAN_FilterFIFOAssignment; 
 
  
  uint8_t CAN_FilterNumber;           

  uint8_t CAN_FilterMode;            
 

  uint8_t CAN_FilterScale;           
 

  FunctionalState CAN_FilterActivation; 
 
} CAN_FilterInitTypeDef;



 
typedef struct
{
  uint32_t StdId;  
 

  uint32_t ExtId;  
 

  uint8_t IDE;     

 

  uint8_t RTR;     

 

  uint8_t DLC;     

 

  uint8_t Data[8]; 
 
} CanTxMsg;



 
typedef struct
{
  uint32_t StdId;  
 

  uint32_t ExtId;  
 

  uint8_t IDE;     

 

  uint8_t RTR;     

 

  uint8_t DLC;     
 

  uint8_t Data[8]; 
 

  uint8_t FMI;     

 
} CanRxMsg;

 



 



 





 




 



 












 


 


   










 
  



   





 



 









 



 
# 294 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"




 



 
# 311 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"




 



 



 



 



 



 







 



 







 



 





 




 



 



 



 






 



 





 




 



 




 




 



 





 	






 



 






 



 



 	




 



 



 




 




                                                          
# 486 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"


 



 

 

 

 




 
# 510 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"

 



 

 





# 531 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"








 

  


  


 
# 554 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"

 



 






 





# 579 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"

# 586 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"


 



 

 
   

  
void CAN_DeInit(CAN_TypeDef* CANx);

  
uint8_t CAN_Init(CAN_TypeDef* CANx, CAN_InitTypeDef* CAN_InitStruct);



void CAN_FilterInit(CAN_FilterInitTypeDef* CAN_FilterInitStruct);

void CAN_StructInit(CAN_InitTypeDef* CAN_InitStruct);



void CAN_SlaveStartBank(uint8_t CAN_BankNumber);

void CAN_DBGFreeze(CAN_TypeDef* CANx, FunctionalState NewState);
void CAN_TTComModeCmd(CAN_TypeDef* CANx, FunctionalState NewState);

 
uint8_t CAN_Transmit(CAN_TypeDef* CANx, CanTxMsg* TxMessage);
uint8_t CAN_TransmitStatus(CAN_TypeDef* CANx, uint8_t TransmitMailbox);
void CAN_CancelTransmit(CAN_TypeDef* CANx, uint8_t Mailbox);

 
void CAN_Receive(CAN_TypeDef* CANx, uint8_t FIFONumber, CanRxMsg* RxMessage);
void CAN_FIFORelease(CAN_TypeDef* CANx, uint8_t FIFONumber);
uint8_t CAN_MessagePending(CAN_TypeDef* CANx, uint8_t FIFONumber);

 
uint8_t CAN_OperatingModeRequest(CAN_TypeDef* CANx, uint8_t CAN_OperatingMode);
uint8_t CAN_Sleep(CAN_TypeDef* CANx);
uint8_t CAN_WakeUp(CAN_TypeDef* CANx);

 
uint8_t CAN_GetLastErrorCode(CAN_TypeDef* CANx);
uint8_t CAN_GetReceiveErrorCounter(CAN_TypeDef* CANx);
uint8_t CAN_GetLSBTransmitErrorCounter(CAN_TypeDef* CANx);

 
void CAN_ITConfig(CAN_TypeDef* CANx, uint32_t CAN_IT, FunctionalState NewState);
FlagStatus CAN_GetFlagStatus(CAN_TypeDef* CANx, uint32_t CAN_FLAG);
void CAN_ClearFlag(CAN_TypeDef* CANx, uint32_t CAN_FLAG);
ITStatus CAN_GetITStatus(CAN_TypeDef* CANx, uint32_t CAN_IT);
void CAN_ClearITPendingBit(CAN_TypeDef* CANx, uint32_t CAN_IT);









 



 

 
# 59 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"



 



 

 



 

typedef struct
{
  uint32_t DAC_Trigger;                      
 

  uint32_t DAC_WaveGeneration;               

 

  uint32_t DAC_LFSRUnmask_TriangleAmplitude; 

 

  uint32_t DAC_OutputBuffer;                 
 
}DAC_InitTypeDef;

 



 



 

# 89 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"




# 102 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"



 



 

# 117 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


 



 

# 149 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"

# 174 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


 



 







 



 







 



 

# 212 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


 



 







 



 




 
  


    





  



  
  





 



 

 
   

   
void DAC_DeInit(void);

 
void DAC_Init(uint32_t DAC_Channel, DAC_InitTypeDef* DAC_InitStruct);
void DAC_StructInit(DAC_InitTypeDef* DAC_InitStruct);
void DAC_Cmd(uint32_t DAC_Channel, FunctionalState NewState);
void DAC_SoftwareTriggerCmd(uint32_t DAC_Channel, FunctionalState NewState);
void DAC_DualSoftwareTriggerCmd(FunctionalState NewState);
void DAC_WaveGenerationCmd(uint32_t DAC_Channel, uint32_t DAC_Wave, FunctionalState NewState);
void DAC_SetChannel1Data(uint32_t DAC_Align, uint16_t Data);
void DAC_SetChannel2Data(uint32_t DAC_Align, uint16_t Data);
void DAC_SetDualChannelData(uint32_t DAC_Align, uint16_t Data2, uint16_t Data1);
uint16_t DAC_GetDataOutputValue(uint32_t DAC_Channel);

 
void DAC_DMACmd(uint32_t DAC_Channel, FunctionalState NewState);

 
void DAC_ITConfig(uint32_t DAC_Channel, uint32_t DAC_IT, FunctionalState NewState);
FlagStatus DAC_GetFlagStatus(uint32_t DAC_Channel, uint32_t DAC_FLAG);
void DAC_ClearFlag(uint32_t DAC_Channel, uint32_t DAC_FLAG);
ITStatus DAC_GetITStatus(uint32_t DAC_Channel, uint32_t DAC_IT);
void DAC_ClearITPendingBit(uint32_t DAC_Channel, uint32_t DAC_IT);









 



 

 
# 60 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"

























 

 







 
# 38 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"



 



  

 


  
typedef struct
{
  uint16_t DCMI_CaptureMode;      
 

  uint16_t DCMI_SynchroMode;      
 

  uint16_t DCMI_PCKPolarity;      
 

  uint16_t DCMI_VSPolarity;       
 

  uint16_t DCMI_HSPolarity;       
 

  uint16_t DCMI_CaptureRate;      
 

  uint16_t DCMI_ExtendedDataMode; 
 
} DCMI_InitTypeDef;



  
typedef struct
{
  uint16_t DCMI_VerticalStartLine;      
 

  uint16_t DCMI_HorizontalOffsetCount;  
 

  uint16_t DCMI_VerticalLineCount;      
 

  uint16_t DCMI_CaptureCount;           

 
} DCMI_CROPInitTypeDef;



  
typedef struct
{
  uint8_t DCMI_FrameStartCode;  
  uint8_t DCMI_LineStartCode;   
  uint8_t DCMI_LineEndCode;     
  uint8_t DCMI_FrameEndCode;    
} DCMI_CodesInitTypeDef;

 



 



  
# 120 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  
# 134 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  






  




  






  




  






  




  
# 184 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  
# 200 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  
# 219 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  


  





  







  
# 262 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"
                                



  



  

 
  

  
void DCMI_DeInit(void);

 
void DCMI_Init(DCMI_InitTypeDef* DCMI_InitStruct);
void DCMI_StructInit(DCMI_InitTypeDef* DCMI_InitStruct);
void DCMI_CROPConfig(DCMI_CROPInitTypeDef* DCMI_CROPInitStruct);
void DCMI_CROPCmd(FunctionalState NewState);
void DCMI_SetEmbeddedSynchroCodes(DCMI_CodesInitTypeDef* DCMI_CodesInitStruct);
void DCMI_JPEGCmd(FunctionalState NewState);

 
void DCMI_Cmd(FunctionalState NewState);
void DCMI_CaptureCmd(FunctionalState NewState);
uint32_t DCMI_ReadData(void);

 
void DCMI_ITConfig(uint16_t DCMI_IT, FunctionalState NewState);
FlagStatus DCMI_GetFlagStatus(uint16_t DCMI_FLAG);
void DCMI_ClearFlag(uint16_t DCMI_FLAG);
ITStatus DCMI_GetITStatus(uint16_t DCMI_IT);
void DCMI_ClearITPendingBit(uint16_t DCMI_IT);









  



  

 
# 61 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma2d.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma2d.h"



 



  

 
 


 

typedef struct
{
  uint32_t DMA2D_Mode;                           
 
  
  uint32_t DMA2D_CMode;                          
 

  uint32_t DMA2D_OutputBlue;                     





 

  uint32_t DMA2D_OutputGreen;                    





 
            
  uint32_t DMA2D_OutputRed;                      





 
  
  uint32_t DMA2D_OutputAlpha;                    



 

  uint32_t DMA2D_OutputMemoryAdd;                
 

  uint32_t DMA2D_OutputOffset;                   
 

  uint32_t DMA2D_NumberOfLine;                   
 
            
  uint32_t DMA2D_PixelPerLine;                   
 
} DMA2D_InitTypeDef;



typedef struct
{
  uint32_t DMA2D_FGMA;                           
 
  
  uint32_t DMA2D_FGO;                            
 

  uint32_t DMA2D_FGCM;                           
 

  uint32_t DMA2D_FG_CLUT_CM;                     
 
            
  uint32_t DMA2D_FG_CLUT_SIZE;                   
 
  
  uint32_t DMA2D_FGPFC_ALPHA_MODE;               
 

  uint32_t DMA2D_FGPFC_ALPHA_VALUE;              
 

  uint32_t DMA2D_FGC_BLUE;                       
 

  uint32_t DMA2D_FGC_GREEN;                      
 

  uint32_t DMA2D_FGC_RED;                        
 
            
  uint32_t DMA2D_FGCMAR;                         
 
} DMA2D_FG_InitTypeDef;


typedef struct
{
  uint32_t DMA2D_BGMA;                           
 
  
  uint32_t DMA2D_BGO;                            
 

  uint32_t DMA2D_BGCM;                           
 

  uint32_t DMA2D_BG_CLUT_CM;                     
 
            
  uint32_t DMA2D_BG_CLUT_SIZE;                   
 
  
  uint32_t DMA2D_BGPFC_ALPHA_MODE;               
 

  uint32_t DMA2D_BGPFC_ALPHA_VALUE;              
 

  uint32_t DMA2D_BGC_BLUE;                       
 

  uint32_t DMA2D_BGC_GREEN;                      
 

  uint32_t DMA2D_BGC_RED;                        
 
            
  uint32_t DMA2D_BGCMAR;                         
 
} DMA2D_BG_InitTypeDef;



 



   



 













   



 













   



 









   



 







   



 










   



 








   




 

# 294 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma2d.h"

# 301 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma2d.h"

# 308 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma2d.h"



 



 










 



 



















 



 















 



 

# 382 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma2d.h"







 
      


 

# 401 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma2d.h"









 
      


 


  









 
  


 

 
 

 
void DMA2D_DeInit(void);

 
void DMA2D_Init(DMA2D_InitTypeDef* DMA2D_InitStruct);
void DMA2D_StructInit(DMA2D_InitTypeDef* DMA2D_InitStruct);
void DMA2D_StartTransfer(void);
void DMA2D_AbortTransfer(void);
void DMA2D_Suspend(FunctionalState NewState);
void DMA2D_FGConfig(DMA2D_FG_InitTypeDef* DMA2D_FG_InitStruct);
void DMA2D_FG_StructInit(DMA2D_FG_InitTypeDef* DMA2D_FG_InitStruct);
void DMA2D_BGConfig(DMA2D_BG_InitTypeDef* DMA2D_BG_InitStruct);
void DMA2D_BG_StructInit(DMA2D_BG_InitTypeDef* DMA2D_BG_InitStruct);
void DMA2D_FGStart(FunctionalState NewState);
void DMA2D_BGStart(FunctionalState NewState);
void DMA2D_DeadTimeConfig(uint32_t DMA2D_DeadTime, FunctionalState NewState);
void DMA2D_LineWatermarkConfig(uint32_t DMA2D_LWatermarkConfig);

 
void DMA2D_ITConfig(uint32_t DMA2D_IT, FunctionalState NewState);
FlagStatus DMA2D_GetFlagStatus(uint32_t DMA2D_FLAG);
void DMA2D_ClearFlag(uint32_t DMA2D_FLAG);
ITStatus DMA2D_GetITStatus(uint32_t DMA2D_IT);
void DMA2D_ClearITPendingBit(uint32_t DMA2D_IT);









 



 

 
# 62 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmc.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmc.h"



 



 

   



 
typedef struct
{
  uint32_t FMC_AddressSetupTime;       


 

  uint32_t FMC_AddressHoldTime;        


 

  uint32_t FMC_DataSetupTime;          


 

  uint32_t FMC_BusTurnAroundDuration;  


 

  uint32_t FMC_CLKDivision;            

 

  uint32_t FMC_DataLatency;            





 

  uint32_t FMC_AccessMode;             
 
}FMC_NORSRAMTimingInitTypeDef;



 
typedef struct
{
  uint32_t FMC_Bank;                
 

  uint32_t FMC_DataAddressMux;      

 

  uint32_t FMC_MemoryType;          

 

  uint32_t FMC_MemoryDataWidth;     
 

  uint32_t FMC_BurstAccessMode;     

                                         

  uint32_t FMC_WaitSignalPolarity;  

 

  uint32_t FMC_WrapMode;            

 

  uint32_t FMC_WaitSignalActive;    


 

  uint32_t FMC_WriteOperation;      
 

  uint32_t FMC_WaitSignal;          

 

  uint32_t FMC_ExtendedMode;        
 
  
  uint32_t FMC_AsynchronousWait;     

   

  uint32_t FMC_WriteBurst;          
  

  uint32_t FMC_ContinousClock;       


  

  
  FMC_NORSRAMTimingInitTypeDef* FMC_ReadWriteTimingStruct;    

  FMC_NORSRAMTimingInitTypeDef* FMC_WriteTimingStruct;            
}FMC_NORSRAMInitTypeDef;



 
typedef struct
{
  uint32_t FMC_SetupTime;      



 

  uint32_t FMC_WaitSetupTime;  



 

  uint32_t FMC_HoldSetupTime;  




 

  uint32_t FMC_HiZSetupTime;   



 
}FMC_NAND_PCCARDTimingInitTypeDef;



 
typedef struct
{
  uint32_t FMC_Bank;              
 

  uint32_t FMC_Waitfeature;      
 

  uint32_t FMC_MemoryDataWidth;  
 

  uint32_t FMC_ECC;              
 

  uint32_t FMC_ECCPageSize;      
 

  uint32_t FMC_TCLRSetupTime;    

 

  uint32_t FMC_TARSetupTime;     

  

  FMC_NAND_PCCARDTimingInitTypeDef*  FMC_CommonSpaceTimingStruct;     

  FMC_NAND_PCCARDTimingInitTypeDef*  FMC_AttributeSpaceTimingStruct;  
}FMC_NANDInitTypeDef;



 

typedef struct
{
  uint32_t FMC_Waitfeature;    
 

  uint32_t FMC_TCLRSetupTime;  

 

  uint32_t FMC_TARSetupTime;   

  

  
  FMC_NAND_PCCARDTimingInitTypeDef*  FMC_CommonSpaceTimingStruct;  

  FMC_NAND_PCCARDTimingInitTypeDef*  FMC_AttributeSpaceTimingStruct;    
  
  FMC_NAND_PCCARDTimingInitTypeDef*  FMC_IOSpaceTimingStruct;    
}FMC_PCCARDInitTypeDef;



 
  
typedef struct
{
  uint32_t FMC_LoadToActiveDelay;      

 
  
  uint32_t FMC_ExitSelfRefreshDelay;   

 
   
  uint32_t FMC_SelfRefreshTime;        

 
                                            
  uint32_t FMC_RowCycleDelay;          


 
                                            
  uint32_t FMC_WriteRecoveryTime;      
 
                                            
  uint32_t FMC_RPDelay;                

 
                                            
  uint32_t FMC_RCDDelay;               

 
                                            
}FMC_SDRAMTimingInitTypeDef;



 


typedef struct
{
  uint32_t FMC_CommandMode;            
 
                                            
  uint32_t FMC_CommandTarget;          
 
                                            
  uint32_t FMC_AutoRefreshNumber;      

                                            
                                                                                                             
  uint32_t FMC_ModeRegisterDefinition;  
  
}FMC_SDRAMCommandTypeDef;



 

typedef struct
{
  uint32_t FMC_Bank;                   
 

  uint32_t FMC_ColumnBitsNumber;       
 
                                            
  uint32_t FMC_RowBitsNumber;          
 
                                            
  uint32_t FMC_SDMemoryDataWidth;        
 
                                            
  uint32_t FMC_InternalBankNumber;     
 
                                            
  uint32_t FMC_CASLatency;             
 
                                            
  uint32_t FMC_WriteProtection;        
 
                                            
  uint32_t FMC_SDClockPeriod;          

 
                                            
  uint32_t FMC_ReadBurst;              

 
                                            
  uint32_t FMC_ReadPipeDelay;          
 
                                            
  FMC_SDRAMTimingInitTypeDef* FMC_SDRAMTimingStruct;                                                
  
}FMC_SDRAMInitTypeDef;


 



  



 











 



   







 



     



 



 








                                

                              


 



 








 



 










 



 










 



 








 
    


 







 



 







 



 







 



 







 



 







 



 







 



 







 



 








 
  


 








   



 



 



 



 



 



 



 



 



 



 



 



 



 











 



 
  


 



 







 



 







 



 







 



 
# 687 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmc.h"

# 694 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmc.h"


 



 



 



 



 



 



 



 



 



 



 



 



 



   




 
        


 












 
  


 










   



 










 
  


 








   
  
  


 










   



 








   
  



 










  
  


 








 



 










 
  


 



 
  


 



  
     


   



 
  


   



   
  


   



          
  


   



  
  


   




   
  


 
# 955 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmc.h"

# 963 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmc.h"



 



 










    
  


   




 



 




 
  



 











       



   



 










                           







 



 
# 1054 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmc.h"

# 1061 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmc.h"

# 1068 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmc.h"
                                   





 



 




 



 


 
  

 
void FMC_NORSRAMDeInit(uint32_t FMC_Bank);
void FMC_NORSRAMInit(FMC_NORSRAMInitTypeDef* FMC_NORSRAMInitStruct);
void FMC_NORSRAMStructInit(FMC_NORSRAMInitTypeDef* FMC_NORSRAMInitStruct);
void FMC_NORSRAMCmd(uint32_t FMC_Bank, FunctionalState NewState);

 
void     FMC_NANDDeInit(uint32_t FMC_Bank);
void     FMC_NANDInit(FMC_NANDInitTypeDef* FMC_NANDInitStruct);
void     FMC_NANDStructInit(FMC_NANDInitTypeDef* FMC_NANDInitStruct);
void     FMC_NANDCmd(uint32_t FMC_Bank, FunctionalState NewState);
void     FMC_NANDECCCmd(uint32_t FMC_Bank, FunctionalState NewState);
uint32_t FMC_GetECC(uint32_t FMC_Bank);

 
void FMC_PCCARDDeInit(void);
void FMC_PCCARDInit(FMC_PCCARDInitTypeDef* FMC_PCCARDInitStruct);
void FMC_PCCARDStructInit(FMC_PCCARDInitTypeDef* FMC_PCCARDInitStruct);
void FMC_PCCARDCmd(FunctionalState NewState);

 
void     FMC_SDRAMDeInit(uint32_t FMC_Bank);
void     FMC_SDRAMInit(FMC_SDRAMInitTypeDef* FMC_SDRAMInitStruct);
void     FMC_SDRAMStructInit(FMC_SDRAMInitTypeDef* FMC_SDRAMInitStruct);
void     FMC_SDRAMCmdConfig(FMC_SDRAMCommandTypeDef* FMC_SDRAMCommandStruct);
uint32_t FMC_GetModeStatus(uint32_t SDRAM_Bank);
void     FMC_SetRefreshCount(uint32_t FMC_Count);
void     FMC_SetAutoRefresh_Number(uint32_t FMC_Number);
void     FMC_SDRAMWriteProtectionConfig(uint32_t SDRAM_Bank, FunctionalState NewState);

 
void       FMC_ITConfig(uint32_t FMC_Bank, uint32_t FMC_IT, FunctionalState NewState);
FlagStatus FMC_GetFlagStatus(uint32_t FMC_Bank, uint32_t FMC_FLAG);
void       FMC_ClearFlag(uint32_t FMC_Bank, uint32_t FMC_FLAG);
ITStatus   FMC_GetITStatus(uint32_t FMC_Bank, uint32_t FMC_IT);
void       FMC_ClearITPendingBit(uint32_t FMC_Bank, uint32_t FMC_IT);








 



  

 
# 63 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_ltdc.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_ltdc.h"



 



  

 
 


 

typedef struct
{
  uint32_t LTDC_HSPolarity;                 
 

  uint32_t LTDC_VSPolarity;                 
 

  uint32_t LTDC_DEPolarity;                 
 

  uint32_t LTDC_PCPolarity;                 
 

  uint32_t LTDC_HorizontalSync;             
 

  uint32_t LTDC_VerticalSync;               
 

  uint32_t LTDC_AccumulatedHBP;             
 

  uint32_t LTDC_AccumulatedVBP;             
 
            
  uint32_t LTDC_AccumulatedActiveW;         
 

  uint32_t LTDC_AccumulatedActiveH;         
 

  uint32_t LTDC_TotalWidth;                 
 

  uint32_t LTDC_TotalHeigh;                 
 
            
  uint32_t LTDC_BackgroundRedValue;         
 

  uint32_t LTDC_BackgroundGreenValue;       
  

   uint32_t LTDC_BackgroundBlueValue;       
 
} LTDC_InitTypeDef;



 

typedef struct
{
  uint32_t LTDC_HorizontalStart;            
 
            
  uint32_t LTDC_HorizontalStop;             
 
  
  uint32_t LTDC_VerticalStart;              
 

  uint32_t LTDC_VerticalStop;               
 
  
  uint32_t LTDC_PixelFormat;                
 

  uint32_t LTDC_ConstantAlpha;              
 

  uint32_t LTDC_DefaultColorBlue;           
 

  uint32_t LTDC_DefaultColorGreen;          
 
            
  uint32_t LTDC_DefaultColorRed;            
 

  uint32_t LTDC_DefaultColorAlpha;          
 

  uint32_t LTDC_BlendingFactor_1;           
 

  uint32_t LTDC_BlendingFactor_2;           
 
            
  uint32_t LTDC_CFBStartAdress;              

  uint32_t LTDC_CFBLineLength;              
 

  uint32_t LTDC_CFBPitch;                   
 
                                                 
  uint32_t LTDC_CFBLineNumber;              
 
} LTDC_Layer_InitTypeDef;



 
typedef struct
{
  uint32_t LTDC_POSX;                          
  uint32_t LTDC_POSY;                          
} LTDC_PosTypeDef;



 
typedef struct
{
  uint32_t LTDC_BlueWidth;                         
  uint32_t LTDC_GreenWidth;                        
  uint32_t LTDC_RedWidth;                          
} LTDC_RGBTypeDef;



 
typedef struct
{
  uint32_t LTDC_ColorKeyBlue;               
 

  uint32_t LTDC_ColorKeyGreen;              
 
            
  uint32_t LTDC_ColorKeyRed;                
 
} LTDC_ColorKeying_InitTypeDef;



 
typedef struct
{
  uint32_t LTDC_CLUTAdress;                 
 

  uint32_t LTDC_BlueValue;                  
 
                                                 
  uint32_t LTDC_GreenValue;                 
 

  uint32_t LTDC_RedValue;                   
 
} LTDC_CLUT_InitTypeDef;

 


 
  


 




# 228 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_ltdc.h"


 



 







 



 







 



 







 



 







 



 







 



 







 



 






 



 



 



 









 



 









 



 









 



 
# 376 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_ltdc.h"








 



 






 



 






 



 




















 



 





 



 





 
 
 
void LTDC_DeInit(void);

 
void LTDC_Init(LTDC_InitTypeDef* LTDC_InitStruct);
void LTDC_StructInit(LTDC_InitTypeDef* LTDC_InitStruct);
void LTDC_Cmd(FunctionalState NewState);
void LTDC_DitherCmd(FunctionalState NewState);
LTDC_RGBTypeDef LTDC_GetRGBWidth(void);
void LTDC_RGBStructInit(LTDC_RGBTypeDef* LTDC_RGB_InitStruct);
void LTDC_LIPConfig(uint32_t LTDC_LIPositionConfig);
void LTDC_ReloadConfig(uint32_t LTDC_Reload);
void LTDC_LayerInit(LTDC_Layer_TypeDef* LTDC_Layerx, LTDC_Layer_InitTypeDef* LTDC_Layer_InitStruct);
void LTDC_LayerStructInit(LTDC_Layer_InitTypeDef * LTDC_Layer_InitStruct);
void LTDC_LayerCmd(LTDC_Layer_TypeDef* LTDC_Layerx, FunctionalState NewState);
LTDC_PosTypeDef LTDC_GetPosStatus(void);
void LTDC_PosStructInit(LTDC_PosTypeDef* LTDC_Pos_InitStruct);
FlagStatus LTDC_GetCDStatus(uint32_t LTDC_CD);
void LTDC_ColorKeyingConfig(LTDC_Layer_TypeDef* LTDC_Layerx, LTDC_ColorKeying_InitTypeDef* LTDC_colorkeying_InitStruct, FunctionalState NewState);
void LTDC_ColorKeyingStructInit(LTDC_ColorKeying_InitTypeDef* LTDC_colorkeying_InitStruct);
void LTDC_CLUTCmd(LTDC_Layer_TypeDef* LTDC_Layerx, FunctionalState NewState);
void LTDC_CLUTInit(LTDC_Layer_TypeDef* LTDC_Layerx, LTDC_CLUT_InitTypeDef* LTDC_CLUT_InitStruct);
void LTDC_CLUTStructInit(LTDC_CLUT_InitTypeDef* LTDC_CLUT_InitStruct);
void LTDC_LayerPosition(LTDC_Layer_TypeDef* LTDC_Layerx, uint16_t OffsetX, uint16_t OffsetY);
void LTDC_LayerAlpha(LTDC_Layer_TypeDef* LTDC_Layerx, uint8_t ConstantAlpha);
void LTDC_LayerAddress(LTDC_Layer_TypeDef* LTDC_Layerx, uint32_t Address);
void LTDC_LayerSize(LTDC_Layer_TypeDef* LTDC_Layerx, uint32_t Width, uint32_t Height);
void LTDC_LayerPixelFormat(LTDC_Layer_TypeDef* LTDC_Layerx, uint32_t PixelFormat);

 
void LTDC_ITConfig(uint32_t LTDC_IT, FunctionalState NewState);
FlagStatus LTDC_GetFlagStatus(uint32_t LTDC_FLAG);
void LTDC_ClearFlag(uint32_t LTDC_FLAG);
ITStatus LTDC_GetITStatus(uint32_t LTDC_IT);
void LTDC_ClearITPendingBit(uint32_t LTDC_IT);









 



 

 
# 64 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"


























  

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"



 



  



 



 

typedef struct
{
  uint32_t SAI_AudioMode;           
 

  uint32_t SAI_Protocol;             
 

  uint32_t SAI_DataSize;            

 

  uint32_t SAI_FirstBit;            

 

  uint32_t SAI_ClockStrobing;       
 

  uint32_t SAI_Synchro;             
 
                                           
  uint32_t SAI_SynchroExt;          



 
 
  uint32_t SAI_OUTDRIV;             


 

  uint32_t SAI_NoDivider;            
 

  uint32_t SAI_MasterDivider;       

 
                                               
  uint32_t SAI_FIFOThreshold;      
                                                                                              
}SAI_InitTypeDef;



 

typedef struct
{

  uint32_t SAI_FrameLength;         





 
                                   
  uint32_t SAI_ActiveFrameLength;   



 

  uint32_t SAI_FSDefinition;        

 

  uint32_t SAI_FSPolarity;          

 

  uint32_t SAI_FSOffset;            

 

}SAI_FrameInitTypeDef;



     

typedef struct
{
  uint32_t SAI_FirstBitOffset;      

 

  uint32_t SAI_SlotSize;            

 

  uint32_t SAI_SlotNumber;          

 

  uint32_t SAI_SlotActive;          

  
}SAI_SlotInitTypeDef;

 



 










# 180 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"



 
# 192 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"


 



 

# 206 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"


 



 

# 226 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"


  



 







 



 







 



 

# 264 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"


  



 
# 277 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"


 



 







  





 







 
  



 




 
  


 




 
    


 




 



 







 



 







 
            


 
  






 
  


 




 

  

 
# 389 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"



 



 




 
  


 
# 424 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"





 



 







 



 







 



 

# 469 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"


 
  


 
  
# 487 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"


 



 
  






 



 
  




 



 

# 524 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"

# 532 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"


 



 

# 547 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"

# 555 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"
                                   
# 563 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"


 
  


 
# 576 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"

# 583 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sai.h"


 

  


 

 
  

  
void SAI_DeInit(SAI_TypeDef* SAIx);

 
void SAI_Init(SAI_Block_TypeDef* SAI_Block_x, SAI_InitTypeDef* SAI_InitStruct);
void SAI_FrameInit(SAI_Block_TypeDef* SAI_Block_x, SAI_FrameInitTypeDef* SAI_FrameInitStruct);
void SAI_SlotInit(SAI_Block_TypeDef* SAI_Block_x, SAI_SlotInitTypeDef* SAI_SlotInitStruct);
void SAI_StructInit(SAI_InitTypeDef* SAI_InitStruct);
void SAI_FrameStructInit(SAI_FrameInitTypeDef* SAI_FrameInitStruct);
void SAI_SlotStructInit(SAI_SlotInitTypeDef* SAI_SlotInitStruct);

void SAI_Cmd(SAI_Block_TypeDef* SAI_Block_x, FunctionalState NewState);
void SAI_MonoModeConfig(SAI_Block_TypeDef* SAI_Block_x, uint32_t SAI_Mono_StreoMode);
void SAI_TRIStateConfig(SAI_Block_TypeDef* SAI_Block_x, uint32_t SAI_TRIState);
void SAI_CompandingModeConfig(SAI_Block_TypeDef* SAI_Block_x, uint32_t SAI_CompandingMode);
void SAI_MuteModeCmd(SAI_Block_TypeDef* SAI_Block_x, FunctionalState NewState);
void SAI_MuteValueConfig(SAI_Block_TypeDef* SAI_Block_x, uint32_t SAI_MuteValue);
void SAI_MuteFrameCounterConfig(SAI_Block_TypeDef* SAI_Block_x, uint32_t SAI_MuteCounter);
void SAI_FlushFIFO(SAI_Block_TypeDef* SAI_Block_x);


void SAI_BlockSynchroConfig(SAI_InitTypeDef* SAI_InitStruct, SAI_TypeDef* SAIx);

  
void SAI_SendData(SAI_Block_TypeDef* SAI_Block_x, uint32_t Data);
uint32_t SAI_ReceiveData(SAI_Block_TypeDef* SAI_Block_x);

 
void SAI_DMACmd(SAI_Block_TypeDef* SAI_Block_x, FunctionalState NewState);

 
void SAI_ITConfig(SAI_Block_TypeDef* SAI_Block_x, uint32_t SAI_IT, FunctionalState NewState);
FlagStatus SAI_GetFlagStatus(SAI_Block_TypeDef* SAI_Block_x, uint32_t SAI_FLAG);
void SAI_ClearFlag(SAI_Block_TypeDef* SAI_Block_x, uint32_t SAI_FLAG);
ITStatus SAI_GetITStatus(SAI_Block_TypeDef* SAI_Block_x, uint32_t SAI_IT);
void SAI_ClearITPendingBit(SAI_Block_TypeDef* SAI_Block_x, uint32_t SAI_IT);
FunctionalState SAI_GetCmdStatus(SAI_Block_TypeDef* SAI_Block_x);
uint32_t SAI_GetFIFOStatus(SAI_Block_TypeDef* SAI_Block_x);




 



 







 
# 65 ".\\SCR\\stm32f4xx_conf.h"


# 78 ".\\SCR\\stm32f4xx_conf.h"

# 88 ".\\SCR\\stm32f4xx_conf.h"










# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"



 



 

 



 

typedef struct
{
  
  uint32_t QSPI_ComConfig_FMode;            
   
	
  uint32_t QSPI_ComConfig_DDRMode;          
 
	
  uint32_t QSPI_ComConfig_DHHC;            
 
  
  uint32_t QSPI_ComConfig_SIOOMode;         
 
  
  uint32_t QSPI_ComConfig_DMode;            
 
  
  uint32_t QSPI_ComConfig_DummyCycles;      
              

  uint32_t QSPI_ComConfig_ABSize;           
  

  uint32_t QSPI_ComConfig_ABMode;           
      
 
  uint32_t QSPI_ComConfig_ADSize;           
 

  uint32_t QSPI_ComConfig_ADMode;           
 
  
  uint32_t QSPI_ComConfig_IMode;            
 

  uint32_t QSPI_ComConfig_Ins;      
 
  
}QSPI_ComConfig_InitTypeDef;



 

typedef struct
{
  uint32_t QSPI_SShift;    
 

  uint32_t QSPI_Prescaler; 
  

  uint32_t QSPI_CKMode;    
 

  uint32_t QSPI_CSHTime;   
    
 
  uint32_t QSPI_FSize;     



 
  uint32_t QSPI_FSelect;   
 
  uint32_t QSPI_DFlash;    
 
}QSPI_InitTypeDef;

 



 



 



 



 
  


 



 



 





 
  


 
# 179 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"


 
  


 



 
	


 





 
	


 





 



   
# 222 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"


 
	


 






 
	


 






 
  


 






   



 
# 270 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"


 
  


 
# 285 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"


 
  


 
# 300 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"


 
  


 
# 315 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"


 
  


 
# 330 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"


   
  


 
# 345 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"


 



 



  



 
# 367 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"


 
  


 
# 385 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_qspi.h"



 
  


 





 
  


 



 
  


 



 
  


 



 
  


 



   



 

 
 

 
void QSPI_DeInit(void);
void QSPI_Init(QSPI_InitTypeDef* QSPI_InitStruct);
void QSPI_StructInit(QSPI_InitTypeDef* QSPI_InitStruct);
void QSPI_ComConfig_Init(QSPI_ComConfig_InitTypeDef* QSPI_ComConfig_InitStruct);
void QSPI_ComConfig_StructInit(QSPI_ComConfig_InitTypeDef* QSPI_ComConfig_InitStruct);
void QSPI_Cmd(FunctionalState NewState);
void QSPI_AutoPollingMode_Config(uint32_t QSPI_Match, uint32_t QSPI_Mask , uint32_t QSPI_Match_Mode);
void QSPI_AutoPollingMode_SetInterval(uint32_t QSPI_Interval);
void QSPI_MemoryMappedMode_SetTimeout(uint32_t QSPI_Timeout);
void QSPI_SetAddress(uint32_t QSPI_Address);
void QSPI_SetAlternateByte(uint32_t QSPI_AlternateByte);
void QSPI_SetFIFOThreshold(uint32_t QSPI_FIFOThreshold);
void QSPI_SetDataLength(uint32_t QSPI_DataLength);
void QSPI_TimeoutCounterCmd(FunctionalState NewState);
void QSPI_AutoPollingModeStopCmd(FunctionalState NewState);
void QSPI_AbortRequest(void);
void QSPI_DualFlashMode_Cmd(FunctionalState NewState);

 
void     QSPI_SendData8(uint8_t Data);
void     QSPI_SendData16(uint16_t Data);
void     QSPI_SendData32(uint32_t Data);
uint8_t  QSPI_ReceiveData8(void);
uint16_t QSPI_ReceiveData16(void);
uint32_t QSPI_ReceiveData32(void);

 
void QSPI_DMACmd(FunctionalState NewState);

 
void       QSPI_ITConfig(uint32_t QSPI_IT, FunctionalState NewState);
uint32_t   QSPI_GetFIFOLevel(void);
FlagStatus QSPI_GetFlagStatus(uint32_t QSPI_FLAG);
void       QSPI_ClearFlag(uint32_t QSPI_FLAG);
ITStatus   QSPI_GetITStatus(uint32_t QSPI_IT);
void       QSPI_ClearITPendingBit(uint32_t QSPI_IT);
uint32_t   QSPI_GetFMode(void);




 



 







 
# 100 ".\\SCR\\stm32f4xx_conf.h"


# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmpi2c.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmpi2c.h"



 



 

 



 

typedef struct
{
  uint32_t FMPI2C_Timing;              

 

  uint32_t FMPI2C_AnalogFilter;        
 

  uint32_t FMPI2C_DigitalFilter;       
 

  uint32_t FMPI2C_Mode;                
 

  uint32_t FMPI2C_OwnAddress1;         
 

  uint32_t FMPI2C_Ack;                 
 

  uint32_t FMPI2C_AcknowledgedAddress; 
 
}FMPI2C_InitTypeDef;

 




 





 








 
     


 




 



 










 



 








 



 








  



 




 



 








 



 







 



 




 




 





 



 

# 217 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmpi2c.h"

# 226 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmpi2c.h"



 



 





 



 

# 256 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmpi2c.h"

# 268 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmpi2c.h"


 



 

# 283 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmpi2c.h"





 



 

# 309 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmpi2c.h"



# 320 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmpi2c.h"



 




 

# 343 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmpi2c.h"


                               
# 353 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fmpi2c.h"



 



 





                              



                               



 



 






                              




                               



 



 

 
 


 
void FMPI2C_DeInit(FMPI2C_TypeDef* FMPI2Cx);
void FMPI2C_Init(FMPI2C_TypeDef* FMPI2Cx, FMPI2C_InitTypeDef* FMPI2C_InitStruct);
void FMPI2C_StructInit(FMPI2C_InitTypeDef* FMPI2C_InitStruct);
void FMPI2C_Cmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_SoftwareResetCmd(FMPI2C_TypeDef* FMPI2Cx);
void FMPI2C_ITConfig(FMPI2C_TypeDef* FMPI2Cx, uint32_t FMPI2C_IT, FunctionalState NewState);
void FMPI2C_StretchClockCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_DualAddressCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_OwnAddress2Config(FMPI2C_TypeDef* FMPI2Cx, uint16_t Address, uint8_t Mask);
void FMPI2C_GeneralCallCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_SlaveByteControlCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_SlaveAddressConfig(FMPI2C_TypeDef* FMPI2Cx, uint16_t Address);
void FMPI2C_10BitAddressingModeCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);

 
void FMPI2C_AutoEndCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_ReloadCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_NumberOfBytesConfig(FMPI2C_TypeDef* FMPI2Cx, uint8_t Number_Bytes);
void FMPI2C_MasterRequestConfig(FMPI2C_TypeDef* FMPI2Cx, uint16_t FMPI2C_Direction);
void FMPI2C_GenerateSTART(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_GenerateSTOP(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_10BitAddressHeaderCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_AcknowledgeConfig(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
uint8_t FMPI2C_GetAddressMatched(FMPI2C_TypeDef* FMPI2Cx);
uint16_t FMPI2C_GetTransferDirection(FMPI2C_TypeDef* FMPI2Cx);
void FMPI2C_TransferHandling(FMPI2C_TypeDef* FMPI2Cx, uint16_t Address, uint8_t Number_Bytes, uint32_t ReloadEndMode, uint32_t StartStopMode);

 
void FMPI2C_SMBusAlertCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_ClockTimeoutCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_ExtendedClockTimeoutCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_IdleClockTimeoutCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_TimeoutAConfig(FMPI2C_TypeDef* FMPI2Cx, uint16_t Timeout);
void FMPI2C_TimeoutBConfig(FMPI2C_TypeDef* FMPI2Cx, uint16_t Timeout);
void FMPI2C_CalculatePEC(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
void FMPI2C_PECRequestCmd(FMPI2C_TypeDef* FMPI2Cx, FunctionalState NewState);
uint8_t FMPI2C_GetPEC(FMPI2C_TypeDef* FMPI2Cx);

 
uint32_t FMPI2C_ReadRegister(FMPI2C_TypeDef* FMPI2Cx, uint8_t FMPI2C_Register);

 
void FMPI2C_SendData(FMPI2C_TypeDef* FMPI2Cx, uint8_t Data);
uint8_t FMPI2C_ReceiveData(FMPI2C_TypeDef* FMPI2Cx);

 
void FMPI2C_DMACmd(FMPI2C_TypeDef* FMPI2Cx, uint32_t FMPI2C_DMAReq, FunctionalState NewState);

 
FlagStatus FMPI2C_GetFlagStatus(FMPI2C_TypeDef* FMPI2Cx, uint32_t FMPI2C_FLAG);
void FMPI2C_ClearFlag(FMPI2C_TypeDef* FMPI2Cx, uint32_t FMPI2C_FLAG);
ITStatus FMPI2C_GetITStatus(FMPI2C_TypeDef* FMPI2Cx, uint32_t FMPI2C_IT);
void FMPI2C_ClearITPendingBit(FMPI2C_TypeDef* FMPI2Cx, uint32_t FMPI2C_IT);




 



 







 
# 104 ".\\SCR\\stm32f4xx_conf.h"


# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spdifrx.h"


























  

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spdifrx.h"



 



  

 


 
typedef struct
{
  uint32_t SPDIFRX_InputSelection;           
 

  uint32_t SPDIFRX_Retries;                  
 

  uint32_t SPDIFRX_WaitForActivity;          
 

  uint32_t SPDIFRX_ChannelSelection;         
 

  uint32_t SPDIFRX_DataFormat;               
 
                                               
  uint32_t SPDIFRX_StereoMode;               
  
}SPDIFRX_InitTypeDef;


 



 




 
# 92 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spdifrx.h"


 



 
# 107 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spdifrx.h"


 



 






 



 






 



 
# 142 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spdifrx.h"


  



 






  



 
# 166 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spdifrx.h"


 
	


 
# 187 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spdifrx.h"


 
	


 
# 210 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spdifrx.h"


 
 	


 

 
  

  
void SPDIFRX_DeInit(void);

 
void SPDIFRX_Init(SPDIFRX_InitTypeDef* SPDIFRX_InitStruct);
void SPDIFRX_StructInit(SPDIFRX_InitTypeDef* SPDIFRX_InitStruct);
void SPDIFRX_Cmd(uint32_t SPDIFRX_State);
void SPDIFRX_SetPreambleTypeBit(FunctionalState NewState);
void SPDIFRX_SetUserDataChannelStatusBits(FunctionalState NewState);
void SPDIFRX_SetValidityBit(FunctionalState NewState);
void SPDIFRX_SetParityBit(FunctionalState NewState);

  
uint32_t SPDIFRX_ReceiveData(void);

 
void SPDIFRX_RxDMACmd(FunctionalState NewState);
void SPDIFRX_CbDMACmd(FunctionalState NewState);

 
void SPDIFRX_ITConfig(uint32_t SPDIFRX_IT, FunctionalState NewState);
FlagStatus SPDIFRX_GetFlagStatus(uint32_t SPDIFRX_FLAG);
void SPDIFRX_ClearFlag(uint32_t SPDIFRX_FLAG);
ITStatus SPDIFRX_GetITStatus(uint32_t SPDIFRX_IT);
void SPDIFRX_ClearITPendingBit(uint32_t SPDIFRX_IT);




 



 







 
# 108 ".\\SCR\\stm32f4xx_conf.h"
# 1 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cec.h"


























 

 







 
# 39 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cec.h"



 



 

 
  


 
typedef struct
{
  uint32_t CEC_SignalFreeTime;     
 
  uint32_t CEC_RxTolerance;        
 
  uint32_t CEC_StopReception;      
 
  uint32_t CEC_BitRisingError;     
 
  uint32_t CEC_LongBitPeriodError; 
 
  uint32_t CEC_BRDNoGen;           
 
  uint32_t CEC_SFTOption;          
 

}CEC_InitTypeDef;

 



 



 
# 89 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cec.h"

# 98 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cec.h"


 



 







 



 







 



 







 



 







 



 








 



 







 



 




 



 
# 200 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cec.h"



# 216 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cec.h"


 



 
# 236 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cec.h"



# 252 ".\\Libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cec.h"


 



 

 
 

 
void CEC_DeInit(void);

 
void CEC_Init(CEC_InitTypeDef* CEC_InitStruct);
void CEC_StructInit(CEC_InitTypeDef* CEC_InitStruct);
void CEC_Cmd(FunctionalState NewState);
void CEC_ListenModeCmd(FunctionalState NewState);
void CEC_OwnAddressConfig(uint8_t CEC_OwnAddress);
void CEC_OwnAddressClear(void);

 
void CEC_SendData(uint8_t Data);
uint8_t CEC_ReceiveData(void);
void CEC_StartOfMessage(void);
void CEC_EndOfMessage(void);

 
void CEC_ITConfig(uint16_t CEC_IT, FunctionalState NewState);
FlagStatus CEC_GetFlagStatus(uint16_t CEC_FLAG);
void CEC_ClearFlag(uint32_t CEC_FLAG);
ITStatus CEC_GetITStatus(uint16_t CEC_IT);
void CEC_ClearITPendingBit(uint16_t CEC_IT);



 



 







 
# 109 ".\\SCR\\stm32f4xx_conf.h"










# 127 ".\\SCR\\stm32f4xx_conf.h"

# 138 ".\\SCR\\stm32f4xx_conf.h"

 
 



 
   



 
 

 
# 169 ".\\SCR\\stm32f4xx_conf.h"



 
# 12028 ".\\Libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"




 

















 









 

  

 

 
# 5 "USER\\w25q64_f4.h"
# 1 "USER\\spi_f4.h"
# 4 "USER\\spi_f4.h"
# 5 "USER\\spi_f4.h"
# 6 "USER\\spi_f4.h"



















typedef enum {
	SPI_Mode_0,  
	SPI_Mode_1,  
	SPI_Mode_2,  
	SPI_Mode_3   
} SPI_Choose_Mode;
 
void SPI_Initstruct (SPI_TypeDef* SPIx, uint8_t SPI_Pin, SPI_Choose_Mode SPI_Mode, uint8_t  SPI_Dir, uint16_t SPI_NSS, uint8_t SPI_Data_Size, uint8_t SPI_BaudRate,uint8_t SPI_First_Bit, uint16_t SPI_Master_Slave);
void SPI_CS (FunctionalState newstate);
void SPI_Write_Data(SPI_TypeDef* SPIx,uint8_t data);
void SPI_Write_MutiData (SPI_TypeDef* SPIx, uint32_t count, uint8_t *data);
uint8_t SPI_Read_Data (SPI_TypeDef* SPIx);
void SPI_Read_MutiData (SPI_TypeDef* SPIx,uint8_t dummy ,uint32_t count, uint8_t *data);
uint8_t SPI_Send(SPI_TypeDef* SPIx, uint8_t data);
 
# 6 "USER\\w25q64_f4.h"
# 1 "USER\\f4_sys_tick.h"





	 
# 8 "USER\\f4_sys_tick.h"
# 9 "USER\\f4_sys_tick.h"
 
void SysTick_Configuration(void);
void Delay_Sys_us (volatile uint32_t nTime);
void Delay_Sys_ms (uint32_t ms);
void TimingDelay_Decrement(void);
void SysTick_Handler(void);

void Timer6_Delay (void);
void delay_us (double delayus);
void delay_ms (double delayms);
 











# 7 "USER\\w25q64_f4.h"
# 22 "USER\\w25q64_f4.h"







 
void W25Q64_Init (void);
uint8_t W25Q64_Send (uint8_t Data);
void W25Q64_Erase (uint8_t Erase, uint32_t Address);
void W25Q64_Page_Write (uint32_t Address, uint8_t *PtrData, uint32_t len);
void W25Q64_Read (uint32_t Address, uint8_t *PtrData,uint32_t len);

 












# 2 "USER\\w25q64_f4.c"

void W25Q64_Init (void)
{
	SPI_Initstruct(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x3000)),
								 0xA1,
								 SPI_Mode_0,
								 ((uint16_t)0x0000),
								 ((uint16_t)0x0200),
								 ((uint16_t)0x0000),
								 ((uint16_t)0x0028),
								 ((uint16_t)0x0000),
								 ((uint16_t)0x0104));
	
}
uint8_t W25Q64_Exchange (uint8_t Data)
{
	SPI_I2S_SendData  (((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x3000)),Data);
	while(SPI_I2S_GetFlagStatus  (((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x3000)), ((uint16_t)0x0080)) == SET);
	return  SPI_I2S_ReceiveData (((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x00010000) + 0x3000)));
}
void W25Q64_Erase (uint8_t Erase, uint32_t Address)
{
	
	SPI_CS(ENABLE);
	W25Q64_Exchange(0x06);
	SPI_CS(DISABLE);
	delay_ms(1);
	
	SPI_CS(ENABLE);
	W25Q64_Exchange(Erase);
	W25Q64_Exchange(Address >> 16);
	W25Q64_Exchange(Address >> 8);
	W25Q64_Exchange(Address);
	SPI_CS(DISABLE);
	delay_ms(400);
}
void W25Q64_Page_Write (uint32_t Address, uint8_t *PtrData, uint32_t len)
{
	
	SPI_CS(ENABLE);
	W25Q64_Exchange(0x06);
	SPI_CS(DISABLE);
	delay_ms(1);
	
	SPI_CS(ENABLE);
	W25Q64_Exchange(0x02);
	W25Q64_Exchange(Address >> 16);
	W25Q64_Exchange(Address >> 8);
	W25Q64_Exchange(Address);
	for (u16 i = 0; i < len; i++)
	{
		W25Q64_Exchange(PtrData[i]);
	}
	SPI_CS(DISABLE);
	delay_ms(3);
}
void W25Q64_Read (uint32_t Address, uint8_t *PtrData,uint32_t len)
{
	
	SPI_CS(ENABLE);
	W25Q64_Exchange(0x03);
	W25Q64_Exchange(Address >> 16);
	W25Q64_Exchange(Address >> 8);
	W25Q64_Exchange(Address);
	for (u16 i = 0; i < len; i++)
	{
		PtrData[i] = W25Q64_Exchange(0x00);
	}
	SPI_CS(DISABLE);
}	
	
	











