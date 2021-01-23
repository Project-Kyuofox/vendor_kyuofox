# Inherit full common Kyuofox stuff
$(call inherit-product, vendor/kyuofox/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/kyuofox/overlay/dictionaries
