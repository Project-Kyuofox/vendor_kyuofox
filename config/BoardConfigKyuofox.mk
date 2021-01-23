include vendor/kyuofox/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/kyuofox/config/BoardConfigQcom.mk
endif

include vendor/kyuofox/config/BoardConfigSoong.mk
