#!/bin/bash
export BUILD_DIR=build/
export PROJECT_NAME=nucleo-skeleton

export PATH=/opt/st/stm32cubeide_1.4.0/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.7-2018-q2-update.linux64_1.4.0.202007081208/tools/bin/:$PATH

export GDB=arm-none-eabi-gdb
export CC=arm-none-eabi-gcc
export OBJDUMP=arm-none-eabi-objdump
export OBJCOPY=arm-none-eabi-objcopy
export SIZE=arm-none-eabi-size
export LD=./STM32F103RBTX_FLASH.ld
