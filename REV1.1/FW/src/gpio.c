/*
 * gpio.c
 *
 *  Created on: 26.10.2018
 *      Author: ziga.miklosic
 */

#include "gpio.h"

// Set pin high
void GpioPinOn(GPIO_TypeDef *gpio, uint8_t pin){
	gpio -> BSRR |= ( 0x01u << pin );
}


// Set pin low
void GpioPinOff(GPIO_TypeDef *gpio, uint8_t pin){
	gpio -> BSRR |= (( 0x01u << pin ) << 16u );
}

// Toggle pin
void GpioPinToggle(GPIO_TypeDef *gpio, uint8_t pin){
	if (( gpio -> IDR & ( 0x01u << pin )) == ( 0x01u << pin )){
		GpioPinOff(gpio, pin);
	}
	else{
		GpioPinOn(gpio, pin);
	}
}


// Initialize GPIO
void GpioInit(void){


	/*
	 * 	Enable clock for GPIOA, GPIOB, GPIOF
	 */
	RCC -> AHBENR |= ( RCC_AHBENR_GPIOAEN | RCC_AHBENR_GPIOBEN | RCC_AHBENR_GPIOFEN );



	/*
	 * 	Configure LEDs
	 */

	// Set output
	LED_PORT -> MODER &= ~(( 0x03u << ( 2 * LED_CC_bp )) |
					       ( 0x03u << ( 2 * LED_CP_bp )) |
						   ( 0x03u << ( 2 * LED_CR_bp )) |
						   ( 0x03u << ( 2 * LED_RANGE_bp )));
	LED_PORT -> MODER |= (( 0x01u << ( 2 * LED_CC_bp )) |
		       	   	   	  ( 0x01u << ( 2 * LED_CP_bp )) |
						  ( 0x01u << ( 2 * LED_CR_bp )) |
						  ( 0x01u << ( 2 * LED_RANGE_bp )));
	// Push-pull
	LED_PORT -> OTYPER &= ~(( 0x03u << LED_CC_bp ) |
  						    ( 0x03u << LED_CP_bp ) |
						    ( 0x03u << LED_CR_bp ) |
						    ( 0x03u << LED_RANGE_bp ));
	// Medium speed
	LED_PORT -> OSPEEDR &= ~(( 0x03u << ( 2 * LED_CC_bp )) |
						     ( 0x03u << ( 2 * LED_CP_bp )) |
						     ( 0x03u << ( 2 * LED_CR_bp )) |
						     ( 0x03u << ( 2 * LED_RANGE_bp )));
	LED_PORT -> OSPEEDR |= (( 0x02u << ( 2 * LED_CC_bp )) |
							( 0x02u << ( 2 * LED_CP_bp )) |
							( 0x02u << ( 2 * LED_CR_bp )) |
							( 0x02u << ( 2 * LED_RANGE_bp )));

	// No pullup/pulldown
	LED_PORT -> PUPDR &= ~(( 0x03u << ( 2 * LED_CC_bp )) |
						   ( 0x03u << ( 2 * LED_CP_bp )) |
						   ( 0x03u << ( 2 * LED_CR_bp )) |
						   ( 0x03u << ( 2 * LED_RANGE_bp )));

	// Turn off LEDs
	GpioPinOff(LED_PORT, LED_CC_bp);
	GpioPinOff(LED_PORT, LED_CP_bp);
	GpioPinOff(LED_PORT, LED_CR_bp);
	GpioPinOff(LED_PORT, LED_RANGE_bp);


	/*
	 * 	Configure seven segment LCD
	 */

	// Set output
	CA_PORT -> MODER &= ~(( 0x03u << ( 2 * CA1_bp )) |
					   	  ( 0x03u << ( 2 * CA2_bp )) |
					      ( 0x03u << ( 2 * CA3_bp )) |
					      ( 0x03u << ( 2 * CA4_bp )));
	CA_PORT -> MODER |= (( 0x01u << ( 2 * CA1_bp )) |
						 ( 0x01u << ( 2 * CA2_bp )) |
						 ( 0x01u << ( 2 * CA3_bp )) |
			  	  	  	 ( 0x01u << ( 2 * CA4_bp )));

	// Push-pull
	CA_PORT -> OTYPER &= ~(( 0x03u << CA1_bp ) |
  						   ( 0x03u << CA2_bp ) |
						   ( 0x03u << CA3_bp ) |
						   ( 0x03u << CA4_bp ));
	// Medium speed
	CA_PORT -> OSPEEDR &= ~(( 0x03u << ( 2 * CA1_bp )) |
						    ( 0x03u << ( 2 * CA2_bp )) |
						    ( 0x03u << ( 2 * CA3_bp )) |
						    ( 0x03u << ( 2 * CA4_bp )));
	CA_PORT -> OSPEEDR |= (( 0x02u << ( 2 * CA1_bp )) |
						   ( 0x02u << ( 2 * CA2_bp )) |
						   ( 0x02u << ( 2 * CA3_bp )) |
						   ( 0x02u << ( 2 * CA4_bp )));

	// No pullup/pulldown
	CA_PORT -> PUPDR &= ~(( 0x03u << ( 2 * CA1_bp )) |
						  ( 0x03u << ( 2 * CA2_bp )) |
						  ( 0x03u << ( 2 * CA3_bp )) |
						  ( 0x03u << ( 2 * CA4_bp )));

	// Turn off common anode -> active LOW!!
	GpioPinOn(CA_PORT, CA1_bp);
	GpioPinOn(CA_PORT, CA2_bp);
	GpioPinOn(CA_PORT, CA3_bp);
	GpioPinOn(CA_PORT, CA4_bp);

	// Set output
	SEG_PORT -> MODER &= ~(( 0x03u << ( 2 * SEG_A_bp )) |
					   	  ( 0x03u << ( 2 * SEG_B_bp )) |
					      ( 0x03u << ( 2 * SEG_C_bp )) |
					      ( 0x03u << ( 2 * SEG_D_bp )) |
					      ( 0x03u << ( 2 * SEG_E_bp )) |
					      ( 0x03u << ( 2 * SEG_F_bp )) |
					      ( 0x03u << ( 2 * SEG_G_bp )));
	SEG_PORT -> MODER |= (( 0x01u << ( 2 * SEG_A_bp )) |
						  ( 0x01u << ( 2 * SEG_B_bp )) |
						  ( 0x01u << ( 2 * SEG_C_bp )) |
						  ( 0x01u << ( 2 * SEG_D_bp )) |
						  ( 0x01u << ( 2 * SEG_E_bp )) |
						  ( 0x01u << ( 2 * SEG_F_bp )) |
			  	  	  	  ( 0x01u << ( 2 * SEG_G_bp )));

	DPX_PORT -> MODER &= ~(( 0x03u << ( 2 * DPX_bp )));
	DPX_PORT -> MODER |= (( 0x01u << ( 2 * DPX_bp )));

	// Push-pull
	SEG_PORT -> OTYPER &= ~(( 0x03u << SEG_A_bp ) |
						    ( 0x03u << SEG_B_bp ) |
						    ( 0x03u << SEG_C_bp ) |
						    ( 0x03u << SEG_D_bp ) |
						    ( 0x03u << SEG_E_bp ) |
						    ( 0x03u << SEG_F_bp ) |
						    ( 0x03u << SEG_G_bp ));

	DPX_PORT -> OTYPER &= ~(( 0x03u << DPX_bp ));

	// Medium speed
	SEG_PORT -> OSPEEDR &=  ~(( 0x03u << ( 2 * SEG_A_bp )) |
							  ( 0x03u << ( 2 * SEG_B_bp )) |
							  ( 0x03u << ( 2 * SEG_C_bp )) |
							  ( 0x03u << ( 2 * SEG_D_bp )) |
							  ( 0x03u << ( 2 * SEG_E_bp )) |
							  ( 0x03u << ( 2 * SEG_F_bp )) |
							  ( 0x03u << ( 2 * SEG_G_bp )));
	SEG_PORT -> OSPEEDR |= (( 0x02u << ( 2 * SEG_A_bp )) |
						    ( 0x02u << ( 2 * SEG_B_bp )) |
						    ( 0x02u << ( 2 * SEG_C_bp )) |
						    ( 0x02u << ( 2 * SEG_D_bp )) |
						    ( 0x02u << ( 2 * SEG_E_bp )) |
						    ( 0x02u << ( 2 * SEG_F_bp )) |
						    ( 0x02u << ( 2 * SEG_G_bp )));

	DPX_PORT -> OSPEEDR &=  ~(( 0x03u << ( 2 * DPX_bp )));
	DPX_PORT -> OSPEEDR |= (( 0x03u << ( 2 * DPX_bp )));

	// No pullup/pulldown
	SEG_PORT -> PUPDR &= ~(( 0x03u << ( 2 * SEG_A_bp )) |
						   ( 0x03u << ( 2 * SEG_B_bp )) |
						   ( 0x03u << ( 2 * SEG_C_bp )) |
						   ( 0x03u << ( 2 * SEG_D_bp )) |
						   ( 0x03u << ( 2 * SEG_E_bp )) |
						   ( 0x03u << ( 2 * SEG_F_bp )) |
						   ( 0x03u << ( 2 * SEG_G_bp )));

	DPX_PORT -> PUPDR &= ~(( 0x03u << ( 2 * DPX_bp )));

	// Turn off segments -> active LOW!!
	GpioPinOn(SEG_PORT, SEG_A_bp);
	GpioPinOn(SEG_PORT, SEG_B_bp);
	GpioPinOn(SEG_PORT, SEG_C_bp);
	GpioPinOn(SEG_PORT, SEG_D_bp);
	GpioPinOn(SEG_PORT, SEG_E_bp);
	GpioPinOn(SEG_PORT, SEG_F_bp);
	GpioPinOn(SEG_PORT, SEG_G_bp);
	GpioPinOn(DPX_PORT, DPX_bp);



	/*
	 * 	Configure current reference pin
	 *
	 * 	NOTE: 	As push-pull output pin, output low voltage is ~4mV. So therefore when setting current reference to 0A define this pin as input
	 * 			and thus output low voltage reaches 0.1
	 */

	// Set as input
	CUR_REF_PORT -> MODER &= ~(( 0x03u << ( 2 * CUR_REF_bp )));
	//CUR_REF_PORT -> MODER |=  ( 0x01u << ( 2 * CUR_REF_bp ));



/*	CUR_REF_PORT -> MODER |= ( 0x02u << ( 2 * CUR_REF_bp ));

	// Push-pull
	CUR_REF_PORT -> OTYPER &= ~(( 0x03u << CUR_REF_bp ));

	// High speed
	CUR_REF_PORT -> OSPEEDR |= ( 0x03u << ( 2ul * CUR_REF_bp ));

	// No pullup/pulldown
	CUR_REF_PORT -> PUPDR &= ~(( 0x03u << ( 2ul * CUR_REF_bp )));

	// Alternate function - AF2 (TIM2_CH3)
	CUR_REF_PORT -> AFR[0] |= ( 0x02u << ( 4 * CUR_REF_bp ));
*/


	/*
	 *  Configure current sense pin
	 */

	// Analog input
	SENSE_PORT -> MODER |= (( 0x03u << ( 2 * VOL_SENSE_bp )) |
						  ( 0x03u << ( 2 * CUR_SENSE_bp )));



	/*
	 * 	Configure rotary encoder
	 */

	// Alternative function mode
	ENCODER_PORT -> MODER &= ~(( 0x03u << ( 2 * PHASE_A_bp )) |
							   ( 0x03u << ( 2 * PHASE_B_bp )));
	ENCODER_PORT -> MODER |= (( 0x02u << ( 2 * PHASE_A_bp )) |
							  ( 0x02u << ( 2 * PHASE_B_bp )));

	// No pullup/pulldown
	ENCODER_PORT -> PUPDR &= ~(( 0x03u << ( 2 * PHASE_A_bp )) |
			   	   	   	   	   ( 0x03u << ( 2 * PHASE_B_bp )));

	// Alternate function -> AF2
	ENCODER_PORT -> AFR[1] |= (( 0x02u << ( 4 * ( PHASE_A_bp - 8ul ))) |
							   ( 0x02u << ( 4 * ( PHASE_B_bp - 8ul ))));


	/*
	 * 	Configure button
	 */

	// Input mode
	BUTTON_PORT -> MODER &= ~( 0x03u << ( 2 * BUTTON_bp));

	// System configure clock enable
	RCC -> APB2ENR |= RCC_APB2ENR_SYSCFGCOMPEN;

	// External interrupts on PA3
	SYSCFG -> EXTICR[0] |= ( 0x00u << ( 4 * BUTTON_bp ));

	// Unmask button interrupt
	EXTI -> IMR |= ( 1 << BUTTON_bp);

	// Falling edge
	EXTI -> FTSR |= ( 1 << BUTTON_bp);

	// Clear pending interrupt
	EXTI -> PR |= ( 1 << BUTTON_bp);

	// Enable intrrupt
	NVIC_EnableIRQ(EXTI2_3_IRQn);

}


// Turn all LED off
void LedsOff(){
	LED_PORT -> BSRR |= ((( 1 << LED_CC_bp ) | ( 1 << LED_CP_bp ) | ( 1 << LED_CR_bp ) | ( 1 << LED_RANGE_bp )) << 16ul );
}



