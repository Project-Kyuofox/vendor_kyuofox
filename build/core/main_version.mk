# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Kyuofox System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.kyuofox.version=$(KYUOFOX_VERSION) \
    ro.kyuofox.releasetype=$(KYUOFOX_BUILDTYPE) \
    ro.kyuofox.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(KYUOFOX_VERSION) \
    ro.kyuofoxlegal.url=https://kyuofox.me/legal

# Kyuofox Platform Display Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.kyuofox.display.version=$(KYUOFOX_DISPLAY_VERSION)
    