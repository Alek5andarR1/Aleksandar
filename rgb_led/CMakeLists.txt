# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# initalize pico_sdk from installed location
# (note this can come from environment, CMake cache etc)
set(PICO_SDK_PATH "/home/aleksandar/pico/pico-sdk")

# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)

project(rgb_led C CXX ASM)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# Add executable. Default name is the project name, version 0.1

add_executable(rgb_led rgb_led.c )

pico_set_program_name(rgb_led "rgb_led")
pico_set_program_version(rgb_led "0.1")

pico_enable_stdio_uart(rgb_led 1)
pico_enable_stdio_usb(rgb_led 1)

pico_generate_pio_header(rgb_led ${CMAKE_CURRENT_LIST_DIR}/rgb_led.pio)

target_sources(rgb_led PRIVATE rgb_led.c)

# Add the standard library to the build
target_link_libraries(rgb_led PRIVATE pico_stdlib)

# Add any user requested libraries
target_link_libraries(rgb_led PRIVATE
        hardware_spi
        hardware_pio
        )

pico_add_extra_outputs(rgb_led)

