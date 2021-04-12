# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# initalize pico_sdk from installed location
# (note this can come from environment, CMake cache etc)
set(PICO_SDK_PATH "/home/aleksandar/pico/pico-sdk")

# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)

project(rgb_remote C CXX ASM)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# Add executable. Default name is the project name, version 0.1

add_executable(rgb_remote rgb_remote.c )

pico_set_program_name(rgb_remote "rgb_remote")
pico_set_program_version(rgb_remote "0.1")

pico_enable_stdio_uart(rgb_remote 1)
pico_enable_stdio_usb(rgb_remote 1)

pico_generate_pio_header(rgb_remote ${CMAKE_CURRENT_LIST_DIR}/rgb_remote.pio)

target_sources(rgb_remote PRIVATE rgb_remote.c)

# Add the standard library to the build
target_link_libraries(rgb_remote PRIVATE pico_stdlib)

# Add any user requested libraries
target_link_libraries(rgb_remote PRIVATE
        hardware_spi
        hardware_pio
        )

pico_add_extra_outputs(rgb_remote)

