/*
 * adc.c
 *
 *  Created on: 22. dec. 2018
 *      Author: ZigaM
 */

#include "adc.h"


void ADCInit(){

	// Enable ADC clock
	RCC -> APB2ENR |= RCC_APB2ENR_ADCEN;

	// Disable ADC for calibration routine
	if (( ADC1 -> CR & ADC_CR_ADEN) != 0 ){
		ADC1 -> CR |= ADC_CR_ADDIS;
	}

	// Wait until ADC is disabled
	while (( ADC1 -> CR & ADC_CR_ADEN) != 0){
		// TODO: Implement timeout for robust implementation
	}

	// Disable DMA
	ADC1 -> CFGR1 &= ~( ADC_CFGR1_DMAEN );

	// Start calibration routine
	ADC1 -> CR |= ADC_CR_ADCAL;

	// Wait to finish calibration routine
	while (( ADC1 -> CR & ADC_CR_ADCAL ) != 0){
		// TODO: Implement timeout for robust implementation
	}

	// Enable ADC
	ADC1 -> CR |= ADC_CR_ADEN;

	// Wait to enable ADC
	while (( ADC1 -> ISR & ADC_ISR_ADRDY ) != 1 ){

		// TODO: Implement timeout for robust implementation
	}

	// Select channels
	ADC1 -> CHSELR |= (( 1 << VOL_SENSE_bp ) | ( 1 << CUR_SENSE_bp ));

	// Sampling mode 240 ADC clock cycles
	ADC1 -> SMPR |= ( ADC_SMPR_SMP_0 | ADC_SMPR_SMP_1 | ADC_SMPR_SMP_2 );


}

// ADC conversion results
// ADCResult[0] -> Voltage
// ADCResult[1] -> Current
uint16_t ADCResult[2];

// Average
uint16_t CurBuffer[AVG_NUM];
uint16_t VolBuffer[AVG_NUM];

// Start ADC conversion
void ADCStarConversion(void){

	// Buffer index
	static uint8_t idx;

	// Start ADC conversion
	ADC1 -> CR |= ADC_CR_ADSTART;

	// Two channels
	for ( uint8_t i = 0; i < 2; i++ ){

		// Wait for end of conversation
		while (( ADC1 -> ISR & ADC_ISR_EOC ) == 0 );

		ADCResult[i] = ( ADC1 -> DR );
	}


	// Store samples
	VolBuffer[idx] = ADCResult[0];
	CurBuffer[idx] = ADCResult[1];

	// Increment index
	idx += 1;
	idx %= AVG_NUM;
}

// Get voltage
uint16_t ADCGetVoltage(void){

	// Sum of all elements
	uint32_t sum = 0u;

	// Accumulate
	for ( uint8_t i = 0; i < AVG_NUM; i++ ){
		sum += VolBuffer[i];
	}

	// Divide sum
	return ( uint16_t ) ( sum >> AVG_DIV_SHIFT );
}


// Get current
uint16_t ADCGetCurrent(void){

	// Sum of all elements
	uint32_t sum = 0u;

	// Accumulate
	for ( uint8_t i = 0; i < AVG_NUM; i++ ){
		sum += CurBuffer[i];
	}

	// Divide sum
	return ( uint16_t ) ( sum >> AVG_DIV_SHIFT );
}


