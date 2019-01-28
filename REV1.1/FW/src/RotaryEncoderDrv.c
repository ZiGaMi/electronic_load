/*
 * RotaryEncoder.c
 *
 *  Created on: 29. dec. 2018
 *      Author: ZigaM
 */

#include "RotaryEncoderDrv.h"

// Check rotary encoder
void RotaryEncoderCheck(RotaryEncoderTypedef *RE){

	// Inactive timer
	static float in_active_time = 0.0f;

	// Get ticks - DIVIDE BY TWO (quadrature encoder)
	RE -> cnt = (( TIM1 -> CNT ) >> 1 );

	// Calculate difference
	RE -> cnt_diff = (( RE -> cnt ) - (RE -> cnt_prev ));

	// Check for overflow
	if ( RE -> cnt_diff > 50 )			RE -> cnt_diff = RE -> cnt_diff - ((( ENCODER_MAX_TICKS - 1 ) >> 1 ) + 1 );
	else if ( RE -> cnt_diff < -50 )	RE -> cnt_diff = ((( ENCODER_MAX_TICKS - 1 ) >> 1 ) + 1 ) + RE -> cnt_diff;

	// Store previous counts
	RE -> cnt_prev = ( RE -> cnt );


	// Clear non active time
	if ( RE -> cnt_diff ){
		in_active_time = 0.0f;
	}

	// Increment till inactive
	else if ( RE -> active ){
		in_active_time += ENCODER_TIMER_TIME_s;
	}

	// Check for timer overflow
	if ( in_active_time >= ENCDER_NON_ACTIVE_TIME_s ){
		RE -> active = false;
	}
	else{
		RE -> active = true;
	}
}
