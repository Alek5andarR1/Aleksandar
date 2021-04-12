#include <stdio.h>
#include <stdlib.h>
#include "pico/stdlib.h"
#include "hardware/spi.h"
#include "hardware/pio.h"
#include "hardware/uart.h"
#include "rgb_remote.pio.h"

#define UART_ID uart0
#define BAUD_RATE 115200

//#define UART_TX_PIN 0
//#define UART_RX_PIN 1

#define PIN_CLK 2
#define PIN_DIN 3

#define N_LEDS 6
#define SERIAL_FREQ (1*1000*1000)




int val;
long ret; 


void put_start_frame(PIO pio, uint sm) {
    pio_sm_put_blocking(pio, sm, ~0u);
}

void put_end_frame(PIO pio, uint sm) {
    pio_sm_put_blocking(pio, sm, 0u);
}

void put_rgb888(PIO pio, uint sm, uint8_t r, uint8_t g, uint8_t b) {
    pio_sm_put_blocking(pio, sm,
                        0x7 << 24 |                   // magic
                        (uint32_t) b << 16 |
                        (uint32_t) g << 8 |
                        (uint32_t) r << 0
    );

}



/*void on_uart_rx() {
    while (uart_is_readable(UART_ID)) {
        uint8_t  ch = uart_getc(UART_ID);
        char* p =&ch;
        ret = strtol(p, NULL, 10);
        printf("\n");
        printf("%d",ret);
        
        }
     } */
int main() {
    
    
    stdio_init_all(); 
    
    PIO pio = pio0;
    uint sm = 0;
    uint offset = pio_add_program(pio, &rgb_remote_mini_program);
    rgb_remote_mini_program_init(pio, sm, offset, SERIAL_FREQ, PIN_CLK, PIN_DIN);
    
   // sleep_ms(5000);
 
    
   // printf("hello serial\n");

    // Set up our UART with the required speed.
   // uart_init(UART_ID, BAUD_RATE);
   
    // Set the TX and RX pins by using the function select on the GPIO
    // Set datasheet for more information on function select
   //  gpio_set_function(UART_TX_PIN, GPIO_FUNC_UART);
   //   gpio_set_function(UART_RX_PIN, GPIO_FUNC_UART);


 while(true) {
    
  for(int i = 0; i < N_LEDS; i++) {
     put_rgb888(pio, sm, 255, 0, 0);
     }

    //on_uart_rx();
   }
 }



