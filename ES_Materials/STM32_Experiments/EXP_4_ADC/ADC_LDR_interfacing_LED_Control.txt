#include "stm32f4xx.h"
int adcData;
const int threshold = 1024;
int main(void) {
    // 1. Enable GPIOA clock by writing 1 to bit 0 of AHB1ENR
    RCC->AHB1ENR |= (1U << 0); 
	 // 2. Enable GPIOC clock by writing 1 to bit 2 of AHB1ENR (for PC14)
    RCC->AHB1ENR |= (1U << 2);   // Enable clock for GPIOC
    
    // 3. Enable ADC1 clock by writing 1 to bit 8 of APB2ENR
    RCC->APB2ENR |= (1 << 8);
    
    // 4. Set PA1 to analog mode (MODER bits 2 and 3 = 11)
    GPIOA->MODER |= (1U << 2);   
    GPIOA->MODER |= (1U << 3);
	
	// 5. Set PC14 to output mode for the LED
    GPIOC->MODER &= ~(1U << 29); // Clear bit 29
    GPIOC->MODER |= (1U << 28);  // Set bit 28 (PC14 as output)
	
    /* ADC1 Configurations */
    // 6. Set sampling time to 3 cycles for channel 0
    ADC1->SMPR2 = 0;

    // 7. Set ADC prescaler to PCLK2/2 (default) - CCR = 0
    ADC->CCR = 0;

    // 8. Reset CR1 and CR2 registers to initialize ADC settings
    ADC1->CR1 = 0;
    ADC1->CR2 = 0;
	
	 // 9. Enable continuous conversion mode by setting the CONT bit in CR2
    ADC1->CR2 |= (1U << 1); 
    //10. Choose the ADC channel by setting the first conversion in SQR3
    ADC1->SQR3 = 1; 
	
    // 11. Set conversion sequence length to 1
    ADC1->SQR1 = 0;
    
    // 12. Enable ADC by setting the ADON bit in CR2 (bit 0)
    ADC1->CR2 |= 1;
		
		  // 13. Wait until the ADC is ready (ADON bit is set)
    while((ADC1->CR2 & 1) == 0) {}
			 
			//14. Start the conversion by setting the SWSTART bit (bit 30) in CR2
       ADC1->CR2 |= (1 << 30);

    // 15. Start the ADC conversion process and read data
    while (1) {
       
        
        // Wait until the conversion is complete (EOC bit in SR is set)
        while (!(ADC1->SR & (1 << 1))) {}
        
        // Read the converted data from the ADC data register (DR)
        adcData = ADC1->DR;
					
					 // Check if the ADC value exceeds the threshold
        if (adcData > threshold) {
            // Turn on the LED (PC14) if the ADC value is greater than the threshold
            GPIOC->ODR |= (1U << 14);
        } else {
            // Turn off the LED (PC14) if the ADC value is less than or equal to the threshold
            GPIOC->ODR &= ~(1U << 14);
				}
    }
}