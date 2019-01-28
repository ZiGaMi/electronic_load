/*
 * adc.h
 *
 *  Created on: 22. dec. 2018
 *      Author: ZigaM
 */

#ifndef ADC_H_
#define ADC_H_

#include "stm32f0xx.h"

#include "gpio.h"


// Moving average number
#define AVG_NUM 			( uint8_t ) ( 32u )
#define AVG_DIV_SHIFT		( uint8_t )	( 5u )

void ADCInit(void);
void ADCStarConversion(void);
uint16_t ADCGetVoltage(void);
uint16_t ADCGetCurrent(void);


#endif /* ADC_H_ */
