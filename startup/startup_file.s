.syntax thumb
.cpu cortex-m4
.thumb

.global Reset_Handler
.global Default_Handler
.global g_pfnVectors        # ??????????

.extern main 

/* --- vector table ---  */
.section .isr_vector, "a", %progbits
.word _estack               /* 0x00000000: Reserved for stack pointer */
.word Reset_Handler         /* 0x00000004: Reset Handler */
.word NMI_Handler           /* 0x00000008: NMI Handler */         #??????????
.word HardFault_Handler     /* 0x0000000C: HardFault */           #????????????
.word MemManage_Handler     /* 0x10: MemManage fault */           #?????????
.word BusFault_Handler      /* 0x14: Bus fault */                 #????????
.word UsageFault_Handler    /* 0x18: Usage fault */               #???????
.word 0, 0, 0, 0            /* 0x0000001C, 0x00000020, 0x00000024, 0x00000028: Reserved */ 
.word SVC_Handler           /* 0x2C: SVCall */                  #????????
.word DebugMon_Handler      /* 0x30: Debug monitor */         #???????
.word 0                     /* 0x34: reserved */
.word PendSV_Handler        /* 0x38: PendSV */              #????????
.word SysTick_Handler       /* 0x3C: SysTick */             #?????????
.word 0                     /* 0x00000040: WWDG */
.word 0                     /* 0x00000044: PVD */
.word 0                     /* 0x00000048: Tamp_Stamp */
.word 0                     /* 0x0000004C: RTC_WKUP */
.word 0                     /* 0x00000050: Flash */
.word 0                     /* 0x00000054: RCC */
.word 0                     /* 0x00000058: EXTI0 */
.word 0                     /* 0x0000005C: EXTI1 */
.word 0                     /* 0x00000060: EXTI2 */
.word 0                     /* 0x00000064: EXTI3 */
.word 0                     /* 0x00000068: EXTI4 */
.word 0                     /* 0x0000006C: DMA1_Stream0 */
.word 0                     /* 0x00000070: DMA1_Stream1 */
.word 0                     /* 0x00000074: DMA1_Stream2 */
.word 0                     /* 0x00000078: DMA1_Stream3 */
.word 0                     /* 0x0000007C: DMA1_Stream4 */
.word 0                     /* 0x00000080: DMA1_Stream5 */
.word 0                     /* 0x00000084: DMA1_Stream6 */
.word 0                     /* 0x00000088: ADC */
.word 0                     /* 0x0000008C: CAN1_TX */
.word 0                     /* 0x00000090: CAN1_RX0 */
.word 0                     /* 0x00000094: CAN1_RX1 */
.word 0                     /* 0x00000098: CAN1_SCE */
.word 0                     /* 0x0000009C: EXTI9_5 */
.word 0                     /* 0x000000A0: TIM1_BRK_TIM9 */
.word 0                     /* 0x000000A4: TIM1_UP_TIM10 */
.word 0                     /* 0x000000A8: TIM1_TRG_COM_TIM11 */
.word 0                     /* 0x000000AC: TIM1_CC */
.word 0                     /* 0x000000B0: TIM2 */
.word 0                     /* 0x000000B4: TIM3 */
.word 0                     /* 0x000000B8: TIM4 */
.word 0                     /* 0x000000BC: I2C1_EV */
.word 0                     /* 0x000000C0: I2C1_ER */
.word 0                     /* 0x000000C4: I2C2_EV */
.word 0                     /* 0x000000C8: I2C2_ER */
.word 0                     /* 0x000000CC: SPI1 */
.word 0                     /* 0x000000D0: SPI2 */
.word USART1_IRQHandler     /* 0x000000D4: USART1 */ /* <- main handler for this project */
.word USART2_IRQHandler               /* IRQ 38 @ 0x0D8  USART2 */
.word 0                                   /* IRQ 39 @ 0x0DC  reserved */
.word EXTI15_10_IRQHandler            /* IRQ 40 @ 0x0E0  EXTI15_10 */
.word RTC_Alarm_IRQHandler            /* IRQ 41 @ 0x0E4  RTC_Alarm */
.word OTG_FS_WKUP_IRQHandler          /* IRQ 42 @ 0x0E8  OTG_FS_WKUP */
.word 0, 0, 0, 0                                   /* IRQ 43 @ 0x0EC  reserved */
.word DMA1_Stream7_IRQHandler         /* IRQ 47 @ 0x0FC  DMA1_Stream7 */
.word 0                                   /* IRQ 48 @ 0x100  reserved */
.word SDIO_IRQHandler                 /* IRQ 49 @ 0x104  SDIO */
.word TIM5_IRQHandler                 /* IRQ 50 @ 0x108  TIM5 */
.word SPI3_IRQHandler                 /* IRQ 51 @ 0x10C  SPI3 */
.word 0, 0, 0, 0                                   /* IRQ 52 @ 0x110  reserved */
.word DMA2_Stream0_IRQHandler         /* IRQ 56 @ 0x120  DMA2_Stream0 */
.word DMA2_Stream1_IRQHandler         /* IRQ 57 @ 0x124  DMA2_Stream1 */
.word DMA2_Stream2_IRQHandler         /* IRQ 58 @ 0x128  DMA2_Stream2 */
.word DMA2_Stream3_IRQHandler         /* IRQ 59 @ 0x12C  DMA2_Stream3 */
.word DMA2_Stream4_IRQHandler         /* IRQ 60 @ 0x130  DMA2_Stream4 */
.word 0, 0, 0, 0, 0, 0                                   /* IRQ 61 @ 0x134  reserved */
.word OTG_FS_IRQHandler               /* IRQ 67 @ 0x14C  OTG_FS */
.word DMA2_Stream5_IRQHandler         /* IRQ 68 @ 0x150  DMA2_Stream5 */
.word DMA2_Stream6_IRQHandler         /* IRQ 69 @ 0x154  DMA2_Stream6 */
.word DMA2_Stream7_IRQHandler         /* IRQ 70 @ 0x158  DMA2_Stream7 */
.word USART6_IRQHandler               /* IRQ 71 @ 0x15C  USART6 */
.word I2C3_EV_IRQHandler              /* IRQ 72 @ 0x160  I2C3_EV */
.word I2C3_ER_IRQHandler              /* IRQ 73 @ 0x164  I2C3_ER */
.word 0, 0, 0, 0, 0, 0, 0                                   /* IRQ 74 @ 0x168  reserved */
.word FPU_IRQHandler                  /* IRQ 81 @ 0x184  FPU */
.word 0, 0                                   /* IRQ 82 @ 0x188  reserved */
.word SPI4_IRQHandler                 /* IRQ 84 @ 0x190  SPI4 */
.word SPI5_IRQHandler                 /* IRQ 85 @ 0x194  SPI5 */

