/*
 * timer.c
 *
 *  Created on: 22. dec. 2018
 *      Author: ZigaM
 */

#include "timer.h"

// Initialization of display timer - TIM3
void DisplayTimerInit(void){

	// Enable timer clock
	RCC -> APB1ENR |= RCC_APB1ENR_TIM3EN;

	// Disable timer
	TIM3 -> CR1 = 0x0000u;

	// Update interrupt enable
	TIM3 -> DIER |= TIM_DIER_UIE;

	// Prescaler
	TIM3 -> PSC = 0x0000u;

	// Period
	TIM3 -> ARR = ( uint16_t ) ( DIPLAY_TIMER_PERIOD );

	// Clear counter
	TIM3 -> CNT = 0ul;

	// Clear interrupt flag
	TIM3 -> SR &= ~TIM_SR_UIF;

	// Enable interrupt
	NVIC_EnableIRQ(TIM3_IRQn);

	// Enable timer
	TIM3 -> CR1 |= TIM_CR1_CEN;
}


// Initialization of current reference - TIM2 Channel3
void CurrentReferenceInit(){

	// Enable timer clock
	RCC -> APB1ENR |= RCC_APB1ENR_TIM2EN;

	// Disable timer
	TIM2 -> CR1 = 0x0000u;

	// Output compare mode -> PWM Mode 1
	TIM2 -> CCMR2 |= ( 0x06u << TIM_CCMR2_OC3M_Pos );

	// Timer clock prescaler
	TIM2 -> PSC = 0u;

	// Timer frequency
	TIM2 -> ARR = ( uint32_t ) ( PWM_PERIOD );

	// Enable TIM2 channel output
	TIM2 -> CCER |= ( TIM_CCER_CC3E );

	// Enable main output
	TIM2 -> BDTR |= TIM_BDTR_MOE;

	// Compare register
	TIM2 -> CCR3 = 0u;

	// Enable timer
	TIM2 -> CR1 |= TIM_CR1_CEN;

}

// Initialization of rotay encoder - TIM1
void RotaryEncoderInit(void){

	/*
	 * 	Configure timer for encoder interface
	 */

	// Enable timer 1 clock
	RCC -> APB2ENR |= RCC_APB2ENR_TIM1EN;

	// Disable counter
	TIM1 -> CR1 = 0x0000u;

	// Mapped input channels to TI1
	TIM1 -> CCMR1 |= ( TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0 );

	// Non inverting input
	TIM1 -> CCER &= ~( TIM_CCER_CC1P | TIM_CCER_CC2P );

	// Encoder mode 3 -> both edges
	TIM1 -> SMCR |= ( TIM_SMCR_SMS_0 | TIM_SMCR_SMS_1 );

	// Period
	// NOTE: That period is set due to satisfy 0,1,2,0,1,2,0,1... sequence
	// when %3 operation is taken placed -> for choosing modes in main menu
	// Although perfectly limits the current range!! ( 0 - 1010 mA)
	TIM1 -> ARR = ENCODER_MAX_TICKS; //203ul;

	// Clear counter
	TIM1 -> CNT = 0ul;

	// Enable timer 1
	TIM1 -> CR1 |= TIM_CR1_CEN;


	/*
	 * 	Configure timer for encoder checking
	 */

	// Enable timer 14
	RCC -> APB1ENR |= RCC_APB1ENR_TIM14EN;

	// Disable timer
	TIM14 -> CR1 = 0x0000u;

	// Update interrupt enable
	TIM14 -> DIER |= TIM_DIER_UIE;

	// Prescaler
	TIM14 -> PSC = ( uint16_t ) ( ENCODER_TIMER_PRESCALER );

	// Period
	TIM14 -> ARR = ( uint16_t ) ( ENCODER_TIMER_PERIOD );

	// Clear counter
	TIM14 -> CNT = 0ul;

	// Clear interrupt flag
	TIM14 -> SR &= ~TIM_SR_UIF;

	// Enable interrupt
	NVIC_EnableIRQ(TIM14_IRQn);

	// Enable timer
	TIM14 -> CR1 |= TIM_CR1_CEN;
}














