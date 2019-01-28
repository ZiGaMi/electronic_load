/*
 * timer.h
 *
 *  Created on: 22. dec. 2018
 *      Author: ZigaM
 */

#ifndef TIMER_H_
#define TIMER_H_

#include "stm32f0xx.h"
#include "clock.h"
#include "stdlib.h"

/*
 * 		Display timer
 */
#define DISPLAY_TIMER_FREQ			( unsigned long ) 	( 1000 ) // Hz
#define DIPLAY_TIMER_PERIOD			( unsigned long) 	( SYS_CLK_FREQ / DISPLAY_TIMER_FREQ )
void DisplayTimerInit(void);



/*
 * 	Current reference timer -> PWM generation
 */
// Lower frequency higher resolution of current reference, but higher current ripple
// 20kHz is empirically sweet spot
#define PWM_FREQ					( unsigned long )	( 20 ) // ( 50 ) // KHz
#define PWM_PERIOD					( unsigned long )	( SYS_CLK_FREQ / PWM_FREQ * 0.001f )
void CurrentReferenceInit(void);

/*
 * 	Rotary encoder
 */
// NOTE: 1kHz TOP limit
#define ENCODER_TIMER_FREQ			( unsigned long ) 	( 20 ) // Hz
#define ENCODER_TIMER_PRESCALER		( unsigned long )	( 4801u )
#define ENCODER_TIMER_PERIOD		( unsigned long) 	( ( SYS_CLK_FREQ / ENCODER_TIMER_PRESCALER ) / ENCODER_TIMER_FREQ )
#define ENCODER_TIMER_TIME_s		( float )			( 1.0f / ENCODER_TIMER_FREQ )

// Maximum encoder ticks
#define ENCODER_MAX_TICKS			( unsigned long )	( 203ul )






#endif /* TIMER_H_ */
