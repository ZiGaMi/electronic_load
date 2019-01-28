/*
 * RotaryEncoder.h
 *
 *  Created on: 29. dec. 2018
 *      Author: ZigaM
 */

#ifndef ROTARYENCODERDRV_H_
#define ROTARYENCODERDRV_H_

#include "stm32f0xx.h"
#include <stdbool.h>
#include "stdlib.h"
#include "timer.h"


// Movement
typedef enum{
	RE_Dir_None	= ( uint8_t ) ( 0x00u ),			// Rotary encoder not moving
	RE_Dir_Inc	= ( uint8_t ) ( 0x01u ),		// Rotary encoder incrementing
	RE_Dir_Dec 	= ( uint8_t ) ( 0x02u )				// Rotary encoder decrementing
}RotaryEncoderDirectiontTypedef;


// Speed
typedef enum{
	RE_Speed_None	= ( uint8_t ) ( 0x00u ),		// Not moving
	RE_Speed_Low	= ( uint8_t ) ( 0x01u ),
	RE_Speed_Medium	= ( uint8_t ) ( 0x02u ),
	RE_Speed_High	= ( uint8_t ) ( 0x03u )
}RotaryEndocerSpeedTypedef;


// Structure of rotary encoder
typedef struct{

	uint8_t cnt;							// Number of turns
	uint8_t cnt_prev;						// Previous counts
	int8_t cnt_diff;						// Difference in counts
	bool active;							// Rotary encoder active
	//	uint8_t cnt_abs_diff;					// Absolute difference in counts
	RotaryEncoderDirectiontTypedef dir;		// Direction of movement
	RotaryEndocerSpeedTypedef speed;		// Speed of movement
}RotaryEncoderTypedef;


// After that time of non active -> active = false
#define ENCDER_NON_ACTIVE_TIME_s		( float )	( 1.0f )	// sec


void RotaryEncoderInit(void);
void RotaryEncoderCheck(RotaryEncoderTypedef*);


#endif /* ROTARYENCODERDRV_H_ */
