# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# compile ASM with /usr/bin/arm-none-eabi-gcc
# compile C with /bin/arm-none-eabi-gcc-9.2.1
# compile CXX with /usr/bin/arm-none-eabi-g++
ASM_FLAGS = -march=armv6-m -mcpu=cortex-m0plus -mthumb -Og -g   -ffunction-sections -fdata-sections

ASM_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DPICO_BIT_OPS_PICO=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_DIVIDER_HARDWARE=1 -DPICO_DOUBLE_PICO=1 -DPICO_FLOAT_PICO=1 -DPICO_INT64_OPS_PICO=1 -DPICO_MEM_OPS_PICO=1 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PRINTF_PICO=1 -DPICO_PROGRAM_NAME=\"rgb_remote\" -DPICO_PROGRAM_VERSION_STRING=\"0.1\" -DPICO_STDIO_UART=1 -DPICO_STDIO_USB=1 -DPICO_TARGET_NAME=\"rgb_remote\" -DPICO_USE_BLOCKED_RAM=0

ASM_INCLUDES = -I/home/aleksandar/pico/rgb_remote/build -I/home/aleksandar/pico/pico-sdk/src/common/pico_stdlib/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_gpio/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_base/include -I/home/aleksandar/pico/rgb_remote/build/generated/pico_base -I/home/aleksandar/pico/pico-sdk/src/boards/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_platform/include -I/home/aleksandar/pico/pico-sdk/src/rp2040/hardware_regs/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_base/include -I/home/aleksandar/pico/pico-sdk/src/rp2040/hardware_structs/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_claim/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_sync/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_uart/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_divider/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_time/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_timer/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_sync/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_util/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_runtime/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_clocks/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_resets/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_watchdog/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_xosc/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_pll/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_vreg/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_irq/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_printf/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_bootrom/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_bit_ops/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_divider/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_double/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_int64_ops/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_float/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_binary_info/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_stdio/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_stdio_uart/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_stdio_usb/include -I/home/aleksandar/pico/pico-sdk/lib/tinyusb/src -I/home/aleksandar/pico/pico-sdk/lib/tinyusb/src/common -I/home/aleksandar/pico/pico-sdk/lib/tinyusb/hw -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_spi/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_pio/include 

C_FLAGS = -march=armv6-m -mcpu=cortex-m0plus -mthumb -Og -g   -ffunction-sections -fdata-sections -std=gnu11

C_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DPICO_BIT_OPS_PICO=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_DIVIDER_HARDWARE=1 -DPICO_DOUBLE_PICO=1 -DPICO_FLOAT_PICO=1 -DPICO_INT64_OPS_PICO=1 -DPICO_MEM_OPS_PICO=1 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PRINTF_PICO=1 -DPICO_PROGRAM_NAME=\"rgb_remote\" -DPICO_PROGRAM_VERSION_STRING=\"0.1\" -DPICO_STDIO_UART=1 -DPICO_STDIO_USB=1 -DPICO_TARGET_NAME=\"rgb_remote\" -DPICO_USE_BLOCKED_RAM=0

C_INCLUDES = -I/home/aleksandar/pico/rgb_remote/build -I/home/aleksandar/pico/pico-sdk/src/common/pico_stdlib/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_gpio/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_base/include -I/home/aleksandar/pico/rgb_remote/build/generated/pico_base -I/home/aleksandar/pico/pico-sdk/src/boards/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_platform/include -I/home/aleksandar/pico/pico-sdk/src/rp2040/hardware_regs/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_base/include -I/home/aleksandar/pico/pico-sdk/src/rp2040/hardware_structs/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_claim/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_sync/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_uart/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_divider/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_time/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_timer/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_sync/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_util/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_runtime/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_clocks/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_resets/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_watchdog/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_xosc/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_pll/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_vreg/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_irq/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_printf/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_bootrom/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_bit_ops/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_divider/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_double/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_int64_ops/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_float/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_binary_info/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_stdio/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_stdio_uart/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_stdio_usb/include -I/home/aleksandar/pico/pico-sdk/lib/tinyusb/src -I/home/aleksandar/pico/pico-sdk/lib/tinyusb/src/common -I/home/aleksandar/pico/pico-sdk/lib/tinyusb/hw -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_spi/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_pio/include 

CXX_FLAGS = -march=armv6-m -mcpu=cortex-m0plus -mthumb -Og -g   -ffunction-sections -fdata-sections -fno-exceptions -fno-unwind-tables -fno-rtti -fno-use-cxa-atexit -std=gnu++17

CXX_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DPICO_BIT_OPS_PICO=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_DIVIDER_HARDWARE=1 -DPICO_DOUBLE_PICO=1 -DPICO_FLOAT_PICO=1 -DPICO_INT64_OPS_PICO=1 -DPICO_MEM_OPS_PICO=1 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PRINTF_PICO=1 -DPICO_PROGRAM_NAME=\"rgb_remote\" -DPICO_PROGRAM_VERSION_STRING=\"0.1\" -DPICO_STDIO_UART=1 -DPICO_STDIO_USB=1 -DPICO_TARGET_NAME=\"rgb_remote\" -DPICO_USE_BLOCKED_RAM=0

CXX_INCLUDES = -I/home/aleksandar/pico/rgb_remote/build -I/home/aleksandar/pico/pico-sdk/src/common/pico_stdlib/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_gpio/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_base/include -I/home/aleksandar/pico/rgb_remote/build/generated/pico_base -I/home/aleksandar/pico/pico-sdk/src/boards/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_platform/include -I/home/aleksandar/pico/pico-sdk/src/rp2040/hardware_regs/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_base/include -I/home/aleksandar/pico/pico-sdk/src/rp2040/hardware_structs/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_claim/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_sync/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_uart/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_divider/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_time/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_timer/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_sync/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_util/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_runtime/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_clocks/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_resets/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_watchdog/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_xosc/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_pll/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_vreg/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_irq/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_printf/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_bootrom/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_bit_ops/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_divider/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_double/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_int64_ops/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_float/include -I/home/aleksandar/pico/pico-sdk/src/common/pico_binary_info/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_stdio/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_stdio_uart/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_stdio_usb/include -I/home/aleksandar/pico/pico-sdk/lib/tinyusb/src -I/home/aleksandar/pico/pico-sdk/lib/tinyusb/src/common -I/home/aleksandar/pico/pico-sdk/lib/tinyusb/hw -I/home/aleksandar/pico/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_spi/include -I/home/aleksandar/pico/pico-sdk/src/rp2_common/hardware_pio/include 

