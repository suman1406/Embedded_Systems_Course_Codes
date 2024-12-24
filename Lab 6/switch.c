#include "stm32f4xx.h"
int main(void) {
/*1. Enable GPIOA clock by Writing 1 to bit0 of AHB1ENR*/
RCC->AHB1ENR |=(1U<<0);
	/*2. Enable GPIOC clock by writing 1 to bit1 of AHB1ENR*/
RCC->AHB1ENR |=(1U<<2);
/*3. Set PA0 to input mode by writing 0 to bit0 of and bit1 of MODER*/
GPIOA->MODER |=(0U<<0);
GPIOA->MODER |=(0U<<1);
GPIOA->PUPDR &= ~0x00000003; /* clear pull-up/pull-down bits for PA6*/
GPIOA->PUPDR |= 0x00000001; /* set pull-up for PA6 */
	/*4. Set PC14 to output mode by writing 1 to bit  28 of MODER*/
GPIOC->MODER |=(1U<<26);
	
while (1) {
	

/*5. Check if input is high by checking if bit0 of port A is 1*/
if(GPIOA->IDR & (1U<<0)) {
/*6. Turn off PC13 by writing 0 to bit13 of ODR*/
GPIOC->ODR &=~(1U<<13);
}
else{
/*7. Turn on PC13 by writing 1 to bit13 of ODR */

	GPIOC->ODR |=(1U<<13);
}

}

}