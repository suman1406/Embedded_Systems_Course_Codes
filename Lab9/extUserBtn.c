#include "stm32f405xx.h"
.
int main(void){
	RCC->AHB1ENR|=(1U<<0);
	RCC->AHB1ENR|=(1U<<2);
	GPIOA->MODER|=(0U<<2);
	GPIOA->MODER|=(0U<<1);
	GPIOA->PUPDR&=~0x00000003;
}