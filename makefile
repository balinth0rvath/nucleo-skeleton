PROJECT_NAME=nucleo-skeleton

RM := rm -rf
MKDIR_P = mkdir -p
LD = ./STM32F103RBTX_FLASH.ld
CC = arm-none-eabi-gcc
OBJDUMP = arm-none-eabi-objdump
OBJCOPY = arm-none-eabi-objcopy
SIZE = arm-none-eabi-size

EXECUTABLES = $(PROJECT_NAME).elf
EXECUTABLES_WITH_PATH = $(BUILD_DIR)$(PROJECT_NAME).elf
SIZE_OUTPUT = default.size.stdout
OBJDUMP_LIST = $(PROJECT_NAME).list
OBJCOPY_BIN = $(PROJECT_NAME).bin
MAP_FILE = $(PROJECT_NAME).map

SUBDIRS := \
$(BUILD_DIR)Core/Src \
$(BUILD_DIR)Core/Startup \
$(BUILD_DIR)Drivers/STM32F1xx_HAL_Driver/Src \

OBJ_CORE = \
$(BUILD_DIR)Core/Src/system_stm32f1xx.o \
$(BUILD_DIR)Core/Src/sysmem.o \
$(BUILD_DIR)Core/Src/syscalls.o \
$(BUILD_DIR)Core/Src/stm32f1xx_it.o \
$(BUILD_DIR)Core/Src/main.o \
$(BUILD_DIR)Core/Src/stm32f1xx_hal_msp.o \
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

OBJ_STARTUP += \
$(BUILD_DIR)Core/Startup/startup_stm32f103rbtx.o 

TARGET_CORE = $(subst $(BUILD_DIR),$(EMPTY),$(OBJ_CORE))
TARGET_STARTUP = $(subst $(BUILD_DIR),$(EMPTY),$(OBJ_STARTUP))

LINK_LIST = $(OBJ_CORE) $(OBJ_STARTUP)

# All Target
all: mkdirs coremodules startup $(EXECUTABLES) secondary-outputs

mkdirs:
	${MKDIR_P} ${SUBDIRS}

startup: $(TARGET_STARTUP)
%.o: %.s
	$(CC) -mcpu=cortex-m3 -g3 -c -x assembler-with-cpp --specs=nano.specs -mfloat-abi=soft -mthumb -o "./$(BUILD_DIR)$@" "$<"

coremodules: $(TARGET_CORE)
%.o: %.c
	$(CC) $< -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -ICore/Inc -IDrivers/STM32F1xx_HAL_Driver/Inc -IDrivers/STM32F1xx_HAL_Driver/Inc/Legacy -IDrivers/CMSIS/Device/ST/STM32F1xx/Include -IDrivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage --specs=nano.specs -mfloat-abi=soft -mthumb -o "./$(BUILD_DIR)$@"

# Tool invocations
$(EXECUTABLES): $(OBJS) $(USER_OBJS) $(LD)
	$(CC) -o "$(BUILD_DIR)$(EXECUTABLES)" $(LINK_LIST) $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"$(LD)" --specs=nosys.specs -Wl,-Map="$(BUILD_DIR)$(MAP_FILE)" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	$(SIZE)  $(EXECUTABLES_WITH_PATH)
	@echo 'Finished building: $@'
	@echo ' '

$(OBJDUMP_LIST): $(EXECUTABLES)
	$(OBJDUMP) -h -S $(EXECUTABLES_WITH_PATH) > $(BUILD_DIR)$(OBJDUMP_LIST)
	@echo 'Finished building: $@'
	@echo ' '

$(OBJCOPY_BIN): $(EXECUTABLES)
	$(OBJCOPY)  -O binary $(EXECUTABLES_WITH_PATH) $(BUILD_DIR)$(OBJCOPY_BIN)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(BUILD_DIR)
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean 
