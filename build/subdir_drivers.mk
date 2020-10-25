################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_exti.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c \
../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c 

OBJS += \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_exti.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.o \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.o 

C_DEPS += \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_exti.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.d \
./$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.d 


# Each subdirectory must supply rules for building sources it contributes
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_exti.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_exti.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_exti.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.o: ../Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

