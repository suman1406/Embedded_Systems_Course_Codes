#include "stm32f4xx.h"
void delay(int time);


int main(void) {
    RCC->AHB1ENR |=(1U<<0); //enable GPIOA
    RCC->AHB1ENR |=(1U<<1); //enable GPIOB
    RCC->AHB1ENR |=(1U<<2); //enable GPIOC
		RCC->AHB1ENR |=(1U<<3); //enable GPIOB
    
    GPIOA->MODER |= (1U<<10); //A6
    GPIOB->MODER |= (1U<<20); //B10
		GPIOC->MODER |= (1U<<28); //C14
    
    
    GPIOA->MODER |=(0U<<0); //3. Set PA0 to input mode by writing 0 to bit0 of and bit1 of MODER
    GPIOA->MODER |=(0U<<1);
    GPIOA->PUPDR &= ~(0x00000003); /* clear pull-up/pull-down bits for PA6*/
    GPIOA->PUPDR |= 0x00000001; /* set pull-up for PA6 */

    int delay_time = 100000;
	
    while (1) {
				
        GPIOC->ODR |= (1U<<14); // C14

				delay(delay_time);

				GPIOC->ODR &= ~(1U<<14); // C14

				//6. Delay for some time
        delay(delay_time);
    }
}


void delay(int time){
        while (time--		);
}