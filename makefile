RM := rm -rf
MKDIR_P = mkdir -p
LD = ./STM32F103RBTX_FLASH.ld
EXECUTABLES += \
BlinkLed.elf \

SUBDIRS := \
$(BUILD_DIR)Core/Src \
$(BUILD_DIR)Core/Startup \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src \

EXECUTABLES_WITH_PATH += \
$(BUILD_DIR)BlinkLed.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
BlinkLed.list \

OBJCOPY_BIN += \
BlinkLed.bin \

OBJ_LIST := $(BUILD_DIR)Core/Src/main.o \
$(BUILD_DIR)Core/Src/stm32f1xx_hal_msp.o \
$(BUILD_DIR)Core/Src/stm32f1xx_it.o \
$(BUILD_DIR)Core/Src/syscalls.o \
$(BUILD_DIR)Core/Src/sysmem.o \
$(BUILD_DIR)Core/Src/system_stm32f1xx.o \
$(BUILD_DIR)Core/Startup/startup_stm32f103rbtx.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_exti.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.o \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.o

# All Target
all: directories coremodules startup BlinkLed.elf secondary-outputs

directories:
	${MKDIR_P} ${SUBDIRS}

OBJ_CORE = Core/Src/system_stm32f1xx.o \
Core/Src/sysmem.o \
Core/Src/syscalls.o \
Core/Src/stm32f1xx_it.o \
Core/Src/main.o \
Core/Src/stm32f1xx_hal_msp.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_dma.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_exti.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_flash_ex.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio_ex.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_pwr.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc_ex.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim.o \
Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_tim_ex.o

OBJ_STARTUP += \
Core/Startup/startup_stm32f103rbtx.o 

startup: $(OBJ_STARTUP)
%.o: %.s
	arm-none-eabi-gcc -mcpu=cortex-m3 -g3 -c -x assembler-with-cpp --specs=nano.specs -mfloat-abi=soft -mthumb -o "./$(BUILD_DIR)$@" "$<"

coremodules: $(OBJ_CORE)
%.o: %.c
	arm-none-eabi-gcc $< -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -ICore/Inc -IDrivers/STM32F1xx_HAL_Driver/Inc -IDrivers/STM32F1xx_HAL_Driver/Inc/Legacy -IDrivers/CMSIS/Device/ST/STM32F1xx/Include -IDrivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage --specs=nano.specs -mfloat-abi=soft -mthumb -o "./$(BUILD_DIR)$@"

# Tool invocations
BlinkLed.elf: $(OBJS) $(USER_OBJS) $(LD)
	arm-none-eabi-gcc -o "$(BUILD_DIR)BlinkLed.elf" $(OBJ_LIST) $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"$(LD)" --specs=nosys.specs -Wl,-Map="$(BUILD_DIR)BlinkLed.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES_WITH_PATH)
	@echo 'Finished building: $@'
	@echo ' '

BlinkLed.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES_WITH_PATH) > "$(BUILD_DIR)BlinkLed.list"
	@echo 'Finished building: $@'
	@echo ' '

BlinkLed.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES_WITH_PATH) "$(BUILD_DIR)BlinkLed.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(BUILD_DIR)
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
