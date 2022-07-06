################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"F:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c2000_21.6.0.LTS/bin/cl2000" -v28 -ml -mt --include_path="F:/ti/c2000/C2000Ware_4_01_00_00/device_support/f2802x/headers" --include_path="C:/Users/ggoul/workspace_v11/MPPT" --include_path="F:/ti/c2000/C2000Ware_4_01_00_00/device_support/f2802x/common" --include_path="F:/ti/c2000/C2000Ware_4_01_00_00/device_support/f2802x/common/include" --include_path="F:/ti/c2000/C2000Ware_4_01_00_00/device_support/f2802x/headers/include" --include_path="F:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c2000_21.6.0.LTS/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"F:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c2000_21.6.0.LTS/bin/cl2000" -v28 -ml -mt --include_path="F:/ti/c2000/C2000Ware_4_01_00_00/device_support/f2802x/headers" --include_path="C:/Users/ggoul/workspace_v11/MPPT" --include_path="F:/ti/c2000/C2000Ware_4_01_00_00/device_support/f2802x/common" --include_path="F:/ti/c2000/C2000Ware_4_01_00_00/device_support/f2802x/common/include" --include_path="F:/ti/c2000/C2000Ware_4_01_00_00/device_support/f2802x/headers/include" --include_path="F:/ti/ccs1120/ccs/tools/compiler/ti-cgt-c2000_21.6.0.LTS/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


