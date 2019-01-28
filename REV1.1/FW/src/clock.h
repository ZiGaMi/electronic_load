/*
 * clock.h
 *
 *  Created on: 26.10.2018
 *      Author: ziga.miklosic
 */

#ifndef CLOCK_H_
#define CLOCK_H_

#include "stm32f0xx.h"

// System clock frequency ( for sys tick exception aka. delay)
#define SYS_CLK_FREQ		( unsigned long ) ( 48000000ul )	// Hz

// System tick interrupt frequency
#define SYS_TICK_FREQ		( unsigned long ) ( 1000ul )		// Hz


// Initialize system clock
void SysClockInit(void);

// Initialize system tick
void SysTickInit(void);

// Return system ticks
uint32_t millis(void);

// Delay for mili seconds
void delay_ms(uint16_t);



#endif /* CLOCK_H_ */
