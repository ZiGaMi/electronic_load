/*
 * gpio.h
 *
 *  Created on: 26.10.2018
 *      Author: ziga.miklosic
 */

#ifndef GPIO_H_
#define GPIO_H_

#include "stm32f031x6.h"


/*
 * 		ADC inputs
 * 	Pins: 	PA0 -> Usense
 * 			PA1 -> Isense
 */
#define SENSE_PORT		( GPIOA )
#define VOL_SENSE_bp	( 0ul )
#define CUR_SENSE_bp	( 1ul )


/*
 * 		TIMER output
 * 	Pin: 	PA2 -> pwm for reference generation
 */
#define CUR_REF_PORT		( GPIOA )
#define CUR_REF_bp		( 2ul )


/*
 * 		PUSH BUTTON ( rotary encoder )
 * 	Pin:	PA3 -> buttons
 *
 * 	NOTE: Active low
 */
#define BUTTON_PORT		( GPIOA )
#define BUTTON_bp		( 3ul )
#define BUTTON_TIMEOUT	( float )	( 1.0f )	// sec


/*
 * 		LEDs INDICATIORS
 *	Pins: 	PA4 -> Range prefix
 *			PA5 -> CC mode
 *			PA6 -> CP mode
 *			PA7 -> CR mode
 */
#define LED_PORT		( GPIOA )
#define LED_RANGE_bp	( 4ul )
#define LED_CC_bp		( 5ul )
#define LED_CP_bp		( 6ul )
#define LED_CR_bp		( 7ul )

/*
 *
 * 		TIMER input ( rotary encoder )
 * 	Pin:	PA8	-> phase A
 * 			PA9 -> phase B
 */
#define ENCODER_PORT	( GPIOA )
#define PHASE_A_bp		( 8ul )
#define PHASE_B_bp		( 9ul )


/*
 * 		SEVEN SEGMENT DISPLAY
 * 	Pin: 	PA10 -> CA1
 * 			PA11 -> CA2
 * 			PA12 -> CA3
 * 			PA13 -> CA4 (SWCLK)
 * 			PB0 -> g
 * 			PB1 -> f
 * 			PB3 -> e
 * 			PB4 -> d
 * 			PB5 -> c
 * 			PB6 -> b
 * 			PB7 -> a
 */
#define CA_PORT		( GPIOA )
#define SEG_PORT	( GPIOB )
#define CA1_bp		( 10ul )
#define CA2_bp		( 11ul )
#define CA3_bp		( 12ul )
#define CA4_bp		( 15ul )
#define SEG_G_bp	( 0ul )
#define SEG_F_bp	( 1ul )
#define SEG_E_bp	( 3ul )
#define SEG_D_bp	( 4ul )
#define SEG_C_bp	( 5ul )
#define SEG_B_bp	( 6ul )
#define SEG_A_bp	( 7ul )

#define DPX_PORT	( GPIOF )
#define DPX_bp		( 0ul )


/*
 * 	GPIO Functions
 */
void GpioInit(void);
void GpioPinOn(GPIO_TypeDef*, uint8_t);
void GpioPinOff(GPIO_TypeDef*, uint8_t);
void GpioPinToggle(GPIO_TypeDef*, uint8_t);

void LedsOff(void);


#endif /* GPIO_H_ */
