/*
 * SevenSegmentDrv.h
 *
 *  Created on: 22. dec. 2018
 *      Author: ZigaM
 */

#ifndef SEVENSEGMENTDRV_H_
#define SEVENSEGMENTDRV_H_

#include "stm32f0xx.h"

#include "gpio.h"


typedef enum{
	CA1 = 0u,
	CA2 = 1u,
	CA3 = 2u,
	CA4 = 3u
}CATypeDef;

typedef enum{
	NONE_c	=	( uint8_t ) ( 0x00u ),
	ZERO_c	=	( uint8_t ) ( 0x7Eu ),
	ONE_c 	=	( uint8_t ) ( 0x30u ),
	TWO_c 	=	( uint8_t ) ( 0x6Du ),
	THREE_c	=	( uint8_t ) ( 0x79u ),
	FOUR_c 	=	( uint8_t ) ( 0x33u ),
	FIVE_c 	=	( uint8_t ) ( 0x5Bu ),
	SIX_c 	=	( uint8_t ) ( 0x5Fu ),
	SEVEN_c	=	( uint8_t ) ( 0x70u ),
	EIGTH_c	=	( uint8_t ) ( 0x7Fu ),
	NINE_c	=	( uint8_t ) ( 0x7Bu )
}DisplayNumTypeDef;

typedef enum{
	A_c 	= 	( uint8_t ) ( 0x76u ),
	B_c 	= 	( uint8_t ) ( EIGTH_c ),
	C_c 	= 	( uint8_t ) ( 0x4Eu ),
	D_c 	= 	( uint8_t ) ( ZERO_c ),
	R_c 	= 	( uint8_t ) ( 0x77u ),
	P_c 	= 	( uint8_t ) ( 0x67u ),
	M_c 	= 	( uint8_t ) ( 0x00u ),		// TBD:
	O_c 	= 	( uint8_t ) ( ZERO_c ),
	E_c 	= 	( uint8_t ) ( 0x4Fu ),
	L_c 	= 	( uint8_t ) ( 0x0Eu ),
	S_c 	= 	( uint8_t ) ( 0x5Bu )
}DisplayCharTypeDef;



void DisplaySegmentsOff(void);
void DisplaySegmentsOn(uint8_t);
void DisplayCommonAnodeOff(void);
void DisplayCommonAnodeOn(CATypeDef);
void DisplayPrintNum(uint16_t, uint8_t, uint8_t);
void DisplayPrintStr(DisplayCharTypeDef*, uint8_t);

#endif /* SEVENSEGMENTDRV_H_ */
