#include "stm32f4xx.h"
int main(void) {
//1. Enable GPIOC clock by Writing 1 to bit2 of AHB1ENR
RCC->AHB1ENR |=(1U<<0);
//2. Set PC13 to output mode by writing 1 to bit26 of MODER
GPIOA->MODER |=(1U<<10);
while (1) {
//3. Turn on PC13 by writing 1 to bit13 of ODR
GPIOC->ODR |= (1U<<5);
//4. Delay for some time/
for(int i =0; i<180000; i++){;}
//5. Turn off PC13 by writing 0 to bit13 of ODR
GPIOC->ODR &= ~(1U<<5);
//6. Delay for some time/
for(int j =0; j<180000; j++) {}
}
}