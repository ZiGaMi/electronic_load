/*
 * SevenSegmentDrv.c
 *
 *  Created on: 22. dec. 2018
 *      Author: ZigaM
 */


#include "SevenSegmentDrv.h"


// Seven segment display numbers
DisplayNumTypeDef DisplayNum[11] = { NONE_c, ZERO_c, ONE_c, TWO_c, THREE_c, FOUR_c, FIVE_c, SIX_c, SEVEN_c, EIGTH_c, NINE_c };


// Turn all segments off
void DisplaySegmentsOff(){
	SEG_PORT -> BSRR |= (( 1 << SEG_A_bp ) | ( 1 << SEG_B_bp ) | ( 1 << SEG_C_bp ) | ( 1 << SEG_D_bp ) |
						 ( 1 << SEG_E_bp ) | ( 1 << SEG_F_bp ) | ( 1 << SEG_G_bp ));
	//DPX_PORT -> BSRR |= ( 1 << DPX_bp );
}

// Turn specified segments on
void DisplaySegmentsOn(uint8_t seg){
	SEG_PORT -> BSRR |= (((( seg & 0xFC) << 1 ) | ( seg & 0x03 )) << 16ul );
}

// Turn all commona anode off
void DisplayCommonAnodeOff(){
	CA_PORT -> BSRR |= (( 1 << CA1_bp ) | ( 1 << CA2_bp ) | ( 1 << CA3_bp ) | ( 1 << CA4_bp ));
}

// Turn specified diode on
void DisplayCommonAnodeOn(CATypeDef ca){

	if 		( ca == CA1 )	GpioPinOff(CA_PORT, CA1_bp);
	else if ( ca == CA2 )	GpioPinOff(CA_PORT, CA2_bp);
	else if ( ca == CA3 )	GpioPinOff(CA_PORT, CA3_bp);
	else if ( ca == CA4 )	GpioPinOff(CA_PORT, CA4_bp);
}

// Display numbers
void DisplayPrintNum(uint16_t num, uint8_t digit, uint8_t dpx){

	// Digits
	uint8_t D[4];

	// Ignore LSD - least significant digit
	if ( num >= 10000 ){
		num /= 10;
	}

	// Get digits
	D[0] = num / 1000;
	num -= D[0] * 1000;
	D[1] = num / 100;
	num -= D[1] * 100;
	D[2] = num / 10;
	num -= D[2] * 10;
	D[3] = num;

	// Display segment
	DisplaySegmentsOff();
	DisplaySegmentsOn(DisplayNum[D[digit]+1]);

	// Check for decimal point
	if ( dpx ){
		DPX_PORT -> BSRR |= (( 1 << DPX_bp ) << 16ul );
	}
	else{
		DPX_PORT -> BSRR |= ( 1 << DPX_bp );
	}

	// Don't display left zeros
	if ( !D[0] ){
		if ( digit == CA1 )
			DisplaySegmentsOff();

		if ( !D[1]){
			if (digit == CA2)
				DisplaySegmentsOff();

		/*	if ( !D[2] ){
				if (digit == CA3)
					DisplaySegmentsOff();
			}
		*/
		}
	}


	// Toggle anode
	DisplayCommonAnodeOff();
	DisplayCommonAnodeOn(digit);
}

// Display "strings"
void DisplayPrintStr(DisplayCharTypeDef *str, uint8_t digit){

	// Display segment
	DisplaySegmentsOff();
	DisplaySegmentsOn(str[digit]);

	// Turn off decimal point
	DPX_PORT -> BSRR |= ( 1 << DPX_bp );

	// Toggle anode
	DisplayCommonAnodeOff();
	DisplayCommonAnodeOn(digit);
}
