#include "stm32f405xx.h"
int main(void) {
// Enable the GPIOB clock by Writing 1 to bit 1 of AHB1ENR
	RCC->AHB1ENR|=(1U<<1);
	// Enable GPOIC clock by Writing 1 ro bit2 of AHB1ENR
	RCC->AHB1ENR|=(1U<<2);
	// Set PB9 to output mode by writing 1 to bit 18 of GPIOB MODER
	GPIOB->MODER|=(1U<<18);
	// Set PC14 to output mode by writing 1 to bit28 of GPOIC MODER
	GPIOC->MODER|=(1U<<28);
	while (1) {
		GPIOB->ODR|=(1U<<9);
		GPIOC->ODR&=~(1U<<14);
		for(int i=0;i<180000;i++){}
		GPIOB->ODR&=~(1U<<9);
		GPIOC->ODR|=(1U<<14);
		for(int i=0;i<180000;i++){}
	}	
}