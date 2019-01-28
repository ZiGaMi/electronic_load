/*
 * clock.c
 *
 *  Created on: 26.10.2018
 *      Author: ziga.miklosic
 */

#include "clock.h"
#include "gpio.h"


// Initialize system clock
void SysClockInit(void){

	// Enable HSI clock
	RCC -> CR |= RCC_CR_HSION;

	// Wait till HSI ready
	while( !(( RCC -> CR & RCC_CR_HSION ) == RCC_CR_HSION ));

	// Disable PLL
	RCC -> CR &= ~RCC_CR_PLLON;

	// PLL settings
	RCC -> CFGR |= RCC_CFGR_PLLSRC_HSI_DIV2 |		// PLL source selected HSI_DIV2
				   RCC_CFGR_PLLMUL12 |				// HSI_DIV x12 -> 48 MHz
				 //  RCC_CFGR_SWS_PLL |				// PLL selected for system clock
				   RCC_CFGR_PPRE_0  | 				// Division factor for APB clock
				   RCC_CFGR_HPRE_0 ;				// Division factor for APH clock

	// Enable PLL
	RCC -> CR |= RCC_CR_PLLON;

	// Wait till PLL ready
	while( !(( RCC -> CR & RCC_CR_PLLRDY ) == RCC_CR_PLLRDY ));

	// Select PLL as system clock
	RCC -> CFGR &= ~RCC_CFGR_SW;
	RCC -> CFGR |= RCC_CFGR_SW_PLL;

	// Wait till system clock as PLL ready
	while( !(( RCC -> CFGR & RCC_CFGR_SWS_PLL ) == RCC_CFGR_SWS_PLL ));

}


// Initialize system tick
void SysTickInit(void){

	// Set reload register
	SysTick -> LOAD = (( SYS_CLK_FREQ / SYS_TICK_FREQ ) - 1UL );

	// Set system tick interrupt priority
	NVIC_SetPriority (SysTick_IRQn, (1UL << 2U) - 1UL);

	// Load system tick counter value
	SysTick -> VAL = 0UL;

	// Enable system tikc IRQ and system tick timer
	SysTick -> CTRL = ( SysTick_CTRL_CLKSOURCE_Msk | SysTick_CTRL_TICKINT_Msk | SysTick_CTRL_ENABLE_Msk );

}


// System clock tick counter
volatile uint32_t sys_tick = 0;

// System tick exception handler
void SysTick_Handler(void){

	// Decrement system tick
	sys_tick--;
}


// Get system tick ( miliseconds )
uint32_t millis(void){
	return sys_tick;
}


// Delay for miliseconds
void delay_ms(uint16_t ms){

	// Fill and wait till count down
	sys_tick = ms;
	while ( millis() != 0u );
}


