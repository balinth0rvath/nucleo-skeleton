################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
./Core/Src/main.c \
./Core/Src/stm32f1xx_hal_msp.c \
./Core/Src/stm32f1xx_it.c \
./Core/Src/syscalls.c \
./Core/Src/sysmem.c \
./Core/Src/system_stm32f1xx.c 

OBJS += \
./$(BUILD_DIR)Core/Src/main.o \
./$(BUILD_DIR)Core/Src/stm32f1xx_hal_msp.o \
./$(BUILD_DIR)Core/Src/stm32f1xx_it.o \
./$(BUILD_DIR)Core/Src/syscalls.o \
./$(BUILD_DIR)Core/Src/sysmem.o \
./$(BUILD_DIR)Core/Src/system_stm32f1xx.o 

C_DEPS += \
./$(BUILD_DIR)Core/Src/main.d \
./$(BUILD_DIR)Core/Src/stm32f1xx_hal_msp.d \
./$(BUILD_DIR)Core/Src/stm32f1xx_it.d \
./$(BUILD_DIR)Core/Src/syscalls.d \
./$(BUILD_DIR)Core/Src/sysmem.d \
./$(BUILD_DIR)Core/Src/system_stm32f1xx.d 


# Each subdirectory must supply rules for building sources it contributes
$(BUILD_DIR)Core/Src/main.o: ./Core/Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I./Core/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I./Drivers/CMSIS/Device/ST/STM32F1xx/Include -I./Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Core/Src/main.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Core/Src/stm32f1xx_hal_msp.o: ./Core/Src/stm32f1xx_hal_msp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I./Core/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I./Drivers/CMSIS/Device/ST/STM32F1xx/Include -I./Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Core/Src/stm32f1xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Core/Src/stm32f1xx_it.o: ./Core/Src/stm32f1xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I./Core/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I./Drivers/CMSIS/Device/ST/STM32F1xx/Include -I./Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Core/Src/stm32f1xx_it.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Core/Src/syscalls.o: ./Core/Src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I./Core/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I./Drivers/CMSIS/Device/ST/STM32F1xx/Include -I./Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Core/Src/syscalls.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Core/Src/sysmem.o: ./Core/Src/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I./Core/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I./Drivers/CMSIS/Device/ST/STM32F1xx/Include -I./Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Core/Src/sysmem.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Core/Src/system_stm32f1xx.o: ./Core/Src/system_stm32f1xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I./Core/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc -I./Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I./Drivers/CMSIS/Device/ST/STM32F1xx/Include -I./Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Core/Src/system_stm32f1xx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

