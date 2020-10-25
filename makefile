################################################################################
# Automatically-generated file. Do not edit!
################################################################################

RM := rm -rf
MKDIR_P = mkdir -p
LD = ./STM32F103RBTX_FLASH.ld
# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_drivers.mk
-include subdir_startup.mk
-include subdir_core.mk
-include objects.mk

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
BlinkLed.elf \

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
all: directories BlinkLed.elf secondary-outputs

directories:
	${MKDIR_P} ${SUBDIRS}

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
