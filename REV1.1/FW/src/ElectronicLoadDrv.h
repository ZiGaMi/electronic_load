/*
 * PowerControlDrv.h
 *
 *  Created on: 22. dec. 2018
 *      Author: ZigaM
 */

#ifndef ELECTRONICLOADDRV_H_
#define ELECTRONICLOADDRV_H_

#include "stm32f0xx.h"
#include <stdbool.h>

#include "timer.h"
#include "adc.h"
#include "RotaryEncoderDrv.h"
#include "SevenSegmentDrv.h"

/*
 * 	Hardware version
 */

// Hardware revision 1
//#define REV1

// Hardware revision 1.1
#define REV1_1

/*
 * 		SYSTEM DEFINES
 */

// Supply voltage
#define VCC_VOL				( float ) ( 3.30f )		// V

// Current sense resistor
#define CUR_SENSE_RES		( uint8_t ) ( 1u )		// Ohm

// Current sense amplifier gain
#define CUR_SENSE_GAIN		( float ) ( 3u )		// V/V

// Voltage sense amplifier gain
#ifdef REV1
#define VOL_SENSE_GAIN		( float )	( 0.333f )	// V/V
#endif

#ifdef REV1_1
#define VOL_SENSE_GAIN		( float )	( 0.2715f )	// V/V
#endif

// ADC reference
#define ADC_VREF			( float ) ( VCC_VOL )

// Voltage convert coefficient ( ADC -> float )
#define Kvol				( float )	( VCC_VOL / ( 4095.f * VOL_SENSE_GAIN ) )

// Current convert coefficient ( ADC -> float )
#define Kcur				( float )	( VCC_VOL / ( 4095.f * CUR_SENSE_GAIN ) )

// Reference current coefficient ( float -> PWM )
#define Kpwm 				( float ) 	( CUR_SENSE_GAIN / VCC_VOL * PWM_PERIOD )


// DCVoltage enable threshold
#define UDC_min			( float )	( .1f )	// V

#ifdef REV1
#define UDC_max			( float )	( 9.60f )	// V
#endif

#ifdef REV1_1
#define UDC_max			( float )	( 12.00f )	// V
#endif

// DCViktage hysteresis
#define UDC_hys			( float )	( 0.05f )	// V


/*
 * 	Current measurement range
 */

// Current range hysteresis
#define CUR_range_hys	( float )	( 0.002f )	// mA

typedef enum{
	Range_20m	= (uint8_t) ( 0x00u ),
	Range_200m	= (uint8_t) ( 0x01u ),
	Range_10	= (uint8_t) ( 0x02u )
}CurrentRangeEnum;




/*
 * 	Calibration factors
 */

// Enable current calibration
#define CUR_CAL_EN

// Current calibration for 20 mA range factors
#define Cur_Gain_cal_20m		( float )	( 1.02930f )		// dlt I / dlt t
#define Cur_Offset_cal_20m		( float )	( 0.00064f )		// A

// Current calibration for 200 mA range factors
#define Cur_Gain_cal_200m		( float )	( 0.99240f )		// dlt I / dlt t
#define Cur_Offset_cal_200m		( float )	( 0.00107f )		// A

// Current calibration for 10 A range factors
#define Cur_Gain_cal_10			( float )	( 0.99030f )		// dlt I / dlt t
#define Cur_Offset_cal_10		( float )	( 0.00108f )		// A


// Enable voltage calibration
#define VOL_CAL_EN

// Voltage calibration factors
#define Vol_Gain_cal			( float )	( 1.0056f )			// dlt V / dlt t
#define Vol_Offset_cal			( float )	( 0.0175f )			// V

// Enable voltage calibration measurement
// NOTE: For displaying actual voltage in CC mode
//#define VOL_CAL_MEAS_EN



/*
 * 	BANG - BANG regulator
 */

// Enable bang bang regulator
#define BANG_BANG_REG_EN


/*
 * 	Electronic load modes
 */
typedef enum{
	//NONE_mode		= ( uint8_t ) ( 0x00u ),
	CC_mode			= ( uint8_t ) ( 0x00u ),
	CP_mode			= ( uint8_t ) ( 0x01u ),
	CR_mode			= ( uint8_t ) ( 0x02u )
}ELOperationModeEnum;

typedef struct{
	ELOperationModeEnum mode;				// Operation mode
	float minimum;							// Minimum allowed value
	float maximum;							// Maximum allowed value
	float resolution;						// Resolution
	float (*actValue)();					// Actual value
	DisplayCharTypeDef *display_chars;		//
}ElModeTypeDef;



/*
 * 	CONSTANT CURRENT MODE CONSTRAINS
 */


// Current limits
#define CUR_min			( float )	( 0.0f )	// A
#define CUR_max			( float )	( 1.0f )	// A

// Current resolution
#define CUR_res			( float )	( .005f )	// A

// Current tolerance from set current
#define CUR_tol			( float )	( 0.0005f )	// A


/*
 * 	CONSTANT POWER MODE CONSTRAINS
 */


// Resistance limits
#define POW_min			( float )	( 0.0f )	// W
#define POW_max			( float )	( 10.0f )	// W

// Resistance resolution
#define POW_res			( float )	( .1f )		// W




/*
 * 	CONSTANT RESISTANCE MODE CONSTRAINS
 */


// Resistance limits
#define RES_min			( float )	( 10.0f )	// Ohm
#define RES_max			( float )	( 100.0f )	// Ohm

// Resistance resolution
#define RES_res			( float )	( 1.0f )	// Ohm



// Power mode protection
typedef enum{
	EL_OK	= ( uint8_t ) ( 0x00 ),		// OK
//	EL_OCP	= ( uint8_t ) ( 0x01 ),		// Over current protection
	EL_OVP 	= ( uint8_t ) ( 0x02 ),		// Over voltage protection
	EL_UVP 	= ( uint8_t ) ( 0x03 )		// Under voltage protection
}ElectronicLoadHealtTypeDef;


/*
 * 	SYSTEM FUNCTIONS
 */

// Current reference current pwm duty
uint32_t GetCurRefDuty(void);
void SetCurRefDuty(uint32_t);

// DC Voltage
float GetVoltage(void);

// Check input voltage
ElectronicLoadHealtTypeDef CheckElectornicLoadHealth(void);

// Load current
ElectronicLoadHealtTypeDef SetCurrent(float);
float GetCurrent(void);

// Load power
ElectronicLoadHealtTypeDef SetPower(float);
float GetPower(void);

// Load resistance
ElectronicLoadHealtTypeDef SetResistance(float);
float GetResistance(void);
float GetReferenceResistance(RotaryEncoderTypedef*);

// Get reference
float GetReference(RotaryEncoderTypedef*, ElModeTypeDef*);

// Clear reference
float ClearReference(void);


#endif /* ELECTRONICLOADDRV_H_ */
