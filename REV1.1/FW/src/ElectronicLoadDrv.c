/*
 * PowerControlDrv.c
 *
 *  Created on: 22. dec. 2018
 *      Author: ZigaM
 */

#include "ElectronicLoadDrv.h"


// Get voltage
float GetVoltage(void){

	// Get measured voltage
	float U_meas = ( float ) ( Kvol * ADCGetVoltage() );

#ifdef VOL_CAL_EN

	// Calculate actual value
	float U_act = ( Vol_Gain_cal * U_meas + Vol_Offset_cal );

	// Calculate error
	float U_err = ( U_act - U_meas );

	return ( float ) ( U_meas + U_err );

#else
	return ( float ) ( U_meas );
	//return ( float ) ( Kvol * ADCGetVoltage() );
#endif
}

// Check health
ElectronicLoadHealtTypeDef CheckElectornicLoadHealth(){

	// Detection of DC voltage
	static bool DCVoltageOverLimit = false;
	static bool DCVoltageUnderLimit = false;
	float vol = GetVoltage();


	// Detect maximum input voltage
	if ( !DCVoltageOverLimit && ( vol > ( UDC_max + UDC_hys ))){
		DCVoltageOverLimit = true;
	}
	else if ( DCVoltageOverLimit && ( vol <= ( UDC_max - UDC_hys ))){
		DCVoltageOverLimit = false;
	}

	// Detect minimum input voltage
	if ( !DCVoltageUnderLimit && ( vol < ( UDC_min - UDC_hys ))){
		DCVoltageUnderLimit = true;
	}
	else if ( DCVoltageUnderLimit && ( vol >= ( UDC_min + UDC_hys ))){
		DCVoltageUnderLimit = false;
	}

	// NOTE: Overcurrent cannot occur as HW is design not to exceed 1.0A
	// Detect maximum current
/*	if ( !CurrentOverLimitDetect && ( GetCurrent() > ( CUR_max + CUR_max))){
		CurrentOverLimitDetect = true;
	}
	else if ( CurrentOverLimitDetect && ( GetCurrent() <= ( CUR_max - CUR_max))){
		CurrentOverLimitDetect = false;
	}
*/

	// Set flags
	//if ( CurrentOverLimitDetect )		return EL_OCP;
	if ( DCVoltageUnderLimit )			return EL_UVP;
	else if ( DCVoltageOverLimit )		return EL_OVP;
	else								return EL_OK;
}


// Current reference duty counter register
uint32_t I_ref_duty = 0ul;

// Get duty
uint32_t GetCurRefDuty(){
	return I_ref_duty;
}

// Set duty
void SetCurRefDuty(uint32_t duty){
	I_ref_duty = duty;
}


// Set current
ElectronicLoadHealtTypeDef SetCurrent(float I_set){

	// EL health
	ElectronicLoadHealtTypeDef health = CheckElectornicLoadHealth();

	// Previous value of reference current
	static float I_set_prev = 0.0f;

	if ( health == EL_OK ){


		// Set pwm
		if ( I_set > 0.0f ){

			// Check if configure as input
			if (( CUR_REF_PORT -> MODER & ( 0x03u << ( 2ul * CUR_REF_bp ))) == ( 0x00u << ( 2ul * CUR_REF_bp ))){

				// Output
				CUR_REF_PORT -> MODER |= ( 0x02u << ( 2 * CUR_REF_bp ));

				// Push-pull
				CUR_REF_PORT -> OTYPER &= ~(( 0x03u << CUR_REF_bp ));

				// High speed
				CUR_REF_PORT -> OSPEEDR |= ( 0x03u << ( 2ul * CUR_REF_bp ));

				// No pullup/pulldown
				CUR_REF_PORT -> PUPDR &= ~(( 0x03u << ( 2ul * CUR_REF_bp )));

				// Alternate function - AF2 (TIM2_CH3)
				CUR_REF_PORT -> AFR[0] |= ( 0x02u << ( 4 * CUR_REF_bp ));

			}
		}
		else{

			// Set as input
			CUR_REF_PORT -> MODER &= ~(( 0x03u << ( 2 * CUR_REF_bp )));
		}



		// Set reference current
		if ( I_set != I_set_prev ){

			// Calculate PWM
			I_ref_duty = ( uint32_t )( Kpwm * I_set );
		}

		// Check duty cycle boundary
		if ( I_ref_duty < 0ul){
			I_ref_duty = 0ul;
		}
		else if ( I_ref_duty > PWM_PERIOD ){
			I_ref_duty = PWM_PERIOD;
		}

		// Set pwm
		TIM2 -> CCR3 = I_ref_duty;

		// Store previous set current value
		I_set_prev = I_set;
	}

	// Turns off gate driver
	else{
		TIM2 -> CCR3 = 0ul;

		// Set as input
		CUR_REF_PORT -> MODER &= ~(( 0x03u << ( 2 * CUR_REF_bp )));
	}

	// Return health
	return health;
}


// Get current
float GetCurrent(void){

#ifdef CUR_CAL_EN

	// Range
	static CurrentRangeEnum cur_range = Range_20m;

	// Get current
	float I_meas = ( Kcur *  ADCGetCurrent() );

	// Actual current calculated by excel calibration factors
	float I_act = 0.0f;

	// Current range
	switch ( cur_range ){

		case Range_20m:

			// Over current
			if ( I_meas > ( 0.02f + CUR_range_hys )) {
				cur_range = Range_200m;
			}

			// Perform calibration
			I_act =  ( Cur_Gain_cal_20m * I_meas + Cur_Offset_cal_20m);

			break;

		case Range_200m:

			// Over current
			if ( I_meas > ( 0.20f + CUR_range_hys )){
				cur_range = Range_10;
			}

			// Under current
			else if ( I_meas < ( 0.02f - CUR_range_hys )){
				cur_range = Range_20m;
			}

			// Perform calibration
			I_act =  ( Cur_Gain_cal_200m * I_meas + Cur_Offset_cal_200m);

			break;

		case Range_10:

			// Under current
			if ( I_meas < ( 0.20f - CUR_range_hys )){
				cur_range = Range_200m;
			}

			// Perform calibration
			I_act =  ( Cur_Gain_cal_10 * I_meas + Cur_Offset_cal_10);

			break;

		default:
			break;
	}

	// Calculate error
	float I_err = ( I_act - I_meas );

	// Compensate error
	return ( float ) ( I_meas + I_err );

#else
	return ( float ) ( Kcur *  ADCGetCurrent() );
#endif
}



// Get power
float GetPower(void){
	return ( float ) ( GetVoltage() * GetCurrent() );
}


// Set power
ElectronicLoadHealtTypeDef SetPower(float pow){

	// EL Health
	ElectronicLoadHealtTypeDef health;

	// Calculate current to satisfy power
	float cur = ( float ) ( pow * 1.0f / GetVoltage() );

	if ( cur <= CUR_max ){
		health = SetCurrent( cur );
	}
	else{
		health = SetCurrent( 0.0f );
	}

	// Return health
	return health;
}


// Set resistance
ElectronicLoadHealtTypeDef SetResistance(float res){

	// EL health
	ElectronicLoadHealtTypeDef health;

	// Current
	float cur = 0.0f;

	// Calculate current to satisfy resisance
	if ( res > 0.0f ){
		cur = ( float ) (( 1.0f / res ) * GetVoltage() );
	}

	if ( cur <= CUR_max ){
		health = SetCurrent( cur );
	}
	else{
		health = SetCurrent( 0.0f );
	}

	// Return health
	return health;
}

// Get resistance
float GetResistance(void){
	return ( float ) ( GetVoltage() / GetCurrent() );
}


// Reference
float reference = 0.0f;

// Clear reference
float ClearReference(){
	reference = 0.0;
	SetCurrent(reference);
	return reference;
}

// Get reference
float GetReference(RotaryEncoderTypedef *RE, ElModeTypeDef *mode){

	// Select reference resistance
	if ( RE -> cnt_diff ){
		reference += (float) (( RE -> cnt_diff ) * ( mode -> resolution ));
		RE -> cnt_diff = 0x00;
	}

	// Bound reference
	if ( reference < ( mode -> minimum ))			reference = ( mode -> minimum );
	else if ( reference > ( mode -> maximum ))		reference = ( mode -> maximum );
	else											reference = reference;

	// Return reference
	return reference;
}





