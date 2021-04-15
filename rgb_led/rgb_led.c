/**
 * Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <stdio.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "pico/stdlib.h"
#include "hardware/spi.h"
#include "hardware/pio.h"
#include "rgb_led.pio.h"
#include "hardware/uart.h"

#define UART_ID uart0
#define BAUD_RATE 115200

#define PIN_CLK 2
#define PIN_DIN 3

#define N_LEDS 6
#define SERIAL_FREQ (1*1000*1000)

#define UART_TX_PIN 0
#define UART_RX_PIN 1



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
  #define red    0
  #define green  0
  #define blue   255
  
#define TABLE_SIZE (1 << 8)
uint8_t wave_table[TABLE_SIZE];

  

int main() {
    stdio_init_all();
    sleep_ms(100);

    PIO pio = pio0;
    uint sm = 0;
    uint offset = pio_add_program(pio, &rgb_led_mini_program);
    rgb_led_mini_program_init(pio, sm, offset, SERIAL_FREQ, PIN_CLK, PIN_DIN);
    uart_init(UART_ID, BAUD_RATE);
    gpio_set_function(UART_RX_PIN, GPIO_FUNC_UART);
    /*for (int i = 0; i < TABLE_SIZE; ++i) {
     wave_table[i] = powf(sinf(i * M_PI / TABLE_SIZE), 6.f) * 255;
      wave_table[i] = powf(sinf(i * M_PI / TABLE_SIZE)/2.1f + .5f, 1.f) * 255;
      wave_table[i] = powf(sinf(i * M_PI / TABLE_SIZE)/2.1f + .5f, 1.f) * 255;;
  }*/
  printf("h\n");
    uint t = 0;
    int num;
    long little_buffer[9] = {0,0,0,0,0,0,0,0,0};
    while (true) {
        printf("\n pointer %ld",*(little_buffer + 1));
        printf("\n pointer to void* %p",(void*)&little_buffer[0]);
        printf("\n Starting value of a_static: %ld\n", little_buffer);
        printf("%ld\n", (long)(void*)&little_buffer[0]);
        int counter = 0;
        while (uart_is_readable(UART_ID)) 
        {
            printf("in uart");
            uint8_t  ch = uart_getc(UART_ID);
            char * p = &ch;
            num = strtol(p, NULL, 10);
            printf("num %d", num);
            printf("counter %d", counter);
            little_buffer[counter] = num;
            counter ++;
        }
        /*
        printf("value of a_static: \n%ld", little_buffer[0]);
        printf("%ld\n", little_buffer[1]);
        printf("%ld\n", little_buffer[2]);
        printf("%ld\n", little_buffer[3]);
        printf("%ld\n", little_buffer[4]);
        printf("%ld\n", little_buffer[5]);
        printf("%ld\n", little_buffer[6]);
        printf("%ld\n", little_buffer[7]);
        printf("%ld\n", little_buffer[8]);
        */


        /*printf("lbdec\n");
        printf("%d ",
        little_buffer[0]*100 + little_buffer[1]*10 + little_buffer[2]);
        printf("%d ",
        little_buffer[3]*100 + little_buffer[4]*10 + little_buffer[5]);
        printf("%d \n",
        little_buffer[6]*100 + little_buffer[7]*10 + little_buffer[8]);
        */
        put_rgb888(pio, sm, 
                little_buffer[0]*100 + little_buffer[1]*10 + little_buffer[2],
                little_buffer[3]*100 + little_buffer[4]*10 + little_buffer[5],
                little_buffer[6]*100 + little_buffer[7]*10 + little_buffer[8]
                );
        put_rgb888(pio, sm, 
                little_buffer[0]*100 + little_buffer[1]*10 + little_buffer[2],
                little_buffer[3]*100*3 + little_buffer[4]*10*3 + little_buffer[5]*3,
                little_buffer[6]*100 + little_buffer[7]*10 + little_buffer[8]
                );
        /*put_rgb888(pio, sm, 0, 255, 0);
        put_rgb888(pio, sm, 0, 0, 255);
        put_rgb888(pio, sm, 255, 255, 0);
        put_rgb888(pio, sm, 255, 0, 255);
        put_rgb888(pio, sm, 0, 255, 255);
        */  
        sleep_ms(1000);
       ++t;
    }
}
