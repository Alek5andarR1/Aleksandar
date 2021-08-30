/* This is raspberry pico C/C++ code for conntroling WS2801 neo pixle. 
Via html frontend build on flask server. WS2801 controled via 
SPI with hardware pio. Communication with server via Uart.  */





#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "pico/stdlib.h"
#include "hardware/spi.h"
#include "hardware/pio.h"
#include "hardware/uart.h"
#include "rgb_remote.pio.h"

#define UART_ID uart0
#define BAUD_RATE 9600

#define UART_TX_PIN 0
#define UART_RX_PIN 1

#define PIN_CLK 2
#define PIN_DIN 3

#define N_LEDS 6
#define SERIAL_FREQ (1*1000*1000)





void put_start_frame(PIO pio, uint sm) {
    pio_sm_put_blocking(pio, sm, ~0u);
}

void put_end_frame(PIO pio, uint sm) {
    pio_sm_put_blocking(pio, sm, 0u);
}

void put_rgb888(PIO pio, uint sm, uint8_t r, uint8_t g, uint8_t b) {
    pio_sm_put_blocking(pio, sm,
                        (uint32_t) b << 16 |
                        (uint32_t) g << 8 |
                        (uint32_t) r << 0
    );
}




int main() {
    
    
    stdio_init_all(); 
    
    PIO pio = pio0;
    uint sm = 0;
    uint offset = pio_add_program(pio, &rgb_remote_mini_program);
    rgb_remote_mini_program_init(pio, sm, offset, SERIAL_FREQ, PIN_CLK, PIN_DIN);
    uart_init(UART_ID, BAUD_RATE);
    gpio_set_function(UART_TX_PIN, GPIO_FUNC_UART);


    
    int num     = 0;  
    int counter = 0;
    int i       = 0;
    int j       = 0;

    
    static char rx_buffer[9] = {0};

    
    long led1[9] = {0};
    long led2[9] = {0};
    long led3[9] = {0};
    long led4[9] = {0};
    long led5[9] = {0};
    long led6[9] = {0};
    
    while (true) {
     
       while (uart_is_readable(uart0))
       { 
           
          for (counter = 0; counter < 54; counter++) {
         
            uint8_t  ch = uart_getc(UART_ID);
            char *p; 
            p = &ch;
            num = strtol(p, NULL, 10);
            i = counter % 9;
            j = counter / 9;
           
            rx_buffer[i] = num;
           
           if (j < 1 ) {
               led1[i] = rx_buffer[i];
               }
               

             
           if (j >= 1 && j < 2 ) {
                led2[i] = rx_buffer[i]; 
               }
               
           if (j >= 2 && j < 3) {
                led3[i] = rx_buffer[i]; 
               }
               
              
           if (j >= 3 && j < 4) {
                led4[i] = rx_buffer[i]; 
                }
           
           if (j >= 4 && j < 5) {
                led5[i] = rx_buffer[i]; 
                } 
                    
           if (j >= 5) {
                led6[i] = rx_buffer[i]; 
                }      

            
        }
     }       
                
   
           put_rgb888(pio, sm, 
                led1[0]*100 + led1[1]*10 + led1[2],
                led1[3]*100 + led1[4]*10 + led1[5],
                led1[6]*100 + led1[7]*10 + led1[8]
                );
               
            put_rgb888(pio, sm, 
                led2[0]*100 + led2[1]*10 + led2[2],
                led2[3]*100 + led2[4]*10 + led2[5],
                led2[6]*100 + led2[7]*10 + led2[8]
                );
                
            
            put_rgb888(pio, sm, 
                led3[0]*100 + led3[1]*10 + led3[2],
                led3[3]*100 + led3[4]*10 + led3[5],
                led3[6]*100 + led3[7]*10 + led3[8]
                );
            
            put_rgb888(pio, sm, 
                led4[0]*100 + led4[1]*10 + led4[2],
                led4[3]*100 + led4[4]*10 + led4[5],
                led4[6]*100 + led4[7]*10 + led4[8]
                );
            
            put_rgb888(pio, sm, 
                led5[0]*100 + led5[1]*10 + led5[2],
                led5[3]*100 + led5[4]*10 + led5[5],
                led5[6]*100 + led5[7]*10 + led5[8]
                );
               
            put_rgb888(pio, sm, 
                led6[0]*100 + led6[1]*10 + led6[2],
                led6[3]*100 + led6[4]*10 + led6[5],
                led6[6]*100 + led6[7]*10 + led6[8]
                );
           
                
           
                
            sleep_ms(2);
          
           }
          }
           
   
    
 


