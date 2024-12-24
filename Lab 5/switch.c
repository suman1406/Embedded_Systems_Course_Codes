#include "stm32f4xx.h"
int main(void) {
/* 1. Enable GPIOA clock by Writing 1 to bit0 of AHB1ENR */
RCC->AHB1ENR |=(1U<<0);
/* 2. Enable GPIOB clock by writing 1 to bit1 of AHB1ENR */
RCC->AHB1ENR |=(1U<<1);
/* 2. Enable GPIOC clock by writing 1 to bit2 of AHB1ENR */
RCC->AHB1ENR |=(1U<<2);
/* 3. Set PB10 to input mode by writing 0 to bit20 of and bit 21 of MODER */
GPIOB->MODER |=(0U<<20);
GPIOB->MODER |=(0U<<21);
GPIOB->PUPDR &= ~0x00300000; /* clear pull-up/pull-down bits for PB10*/
GPIOB->PUPDR |= 0x00100000; /* set pull-up for PB10 */
/* 3. Set PA6 to input mode by writing 0 to bit12 of and bit 13 of MODER */
GPIOA->MODER |=(0U<<12);
GPIOA->MODER |=(0U<<13);
GPIOA->PUPDR &= ~0x00003000; /* clear pull-up/pull-down bits for PA6*/
GPIOA->PUPDR |= 0x00001000; /* set pull-up for PA6 */
///////////////////////////
/*4. Set PC14 to output mode by writing 1 to bit 28 of MODER*/
GPIOC->MODER |=(1U<<28);
GPIOC->MODER |=(0U<<29);
/*4. Set PB9 to output mode by writing 1 to bit 18 of MODER*/
GPIOB->MODER |=(1U<<18);
GPIOB->MODER |=(0U<<19);
while (1) {
/*5. Check if input S1 at PB10 is high by checking if bit10 of port B is 1*/
if(GPIOB->IDR & (1U<<10)) {
/*6. Turn on LED1 at PC14 by writing 0 to bit14 of ODR*/

	for(int i = 0; i<1000000; i++){;}
	GPIOC->ODR &=~(1U<<14);
	GPIOB->ODR |=(1U<<9);
	
	for(int i = 0; i<1000000; i++){;}
	GPIOC->ODR |=(1U<<14);
	GPIOB->ODR &=~(1U<<9);
}
if(GPIOA->IDR & (1U<<6)) {
/*6. Turn on LED1 at PC14 by writing 0 to bit14 of ODR*/

	for(int i = 0; i<100000; i++){;}
	GPIOC->ODR &=~(1U<<14);
	GPIOB->ODR |=(1U<<9);
	
	for(int i = 0; i<100000; i++){;}
	GPIOC->ODR |=(1U<<14);
	GPIOB->ODR &=~(1U<<9);
}
}
}