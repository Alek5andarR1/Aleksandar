# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aleksandar/pico/rgb_led

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aleksandar/pico/rgb_led/build

# Utility rule file for rgb_led_rgb_led_pio_h.

# Include the progress variables for this target.
include CMakeFiles/rgb_led_rgb_led_pio_h.dir/progress.make

CMakeFiles/rgb_led_rgb_led_pio_h: rgb_led.pio.h


rgb_led.pio.h: ../rgb_led.pio
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/aleksandar/pico/rgb_led/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating rgb_led.pio.h"
	pioasm/pioasm -o c-sdk /home/aleksandar/pico/rgb_led/rgb_led.pio /home/aleksandar/pico/rgb_led/build/rgb_led.pio.h

rgb_led_rgb_led_pio_h: CMakeFiles/rgb_led_rgb_led_pio_h
rgb_led_rgb_led_pio_h: rgb_led.pio.h
rgb_led_rgb_led_pio_h: CMakeFiles/rgb_led_rgb_led_pio_h.dir/build.make

.PHONY : rgb_led_rgb_led_pio_h

# Rule to build all files generated by this target.
CMakeFiles/rgb_led_rgb_led_pio_h.dir/build: rgb_led_rgb_led_pio_h

.PHONY : CMakeFiles/rgb_led_rgb_led_pio_h.dir/build

CMakeFiles/rgb_led_rgb_led_pio_h.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rgb_led_rgb_led_pio_h.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rgb_led_rgb_led_pio_h.dir/clean

CMakeFiles/rgb_led_rgb_led_pio_h.dir/depend:
	cd /home/aleksandar/pico/rgb_led/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aleksandar/pico/rgb_led /home/aleksandar/pico/rgb_led /home/aleksandar/pico/rgb_led/build /home/aleksandar/pico/rgb_led/build /home/aleksandar/pico/rgb_led/build/CMakeFiles/rgb_led_rgb_led_pio_h.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rgb_led_rgb_led_pio_h.dir/depend

