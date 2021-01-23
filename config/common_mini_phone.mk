# Inherit mini common Kyuofox stuff
$(call inherit-product, vendor/kyuofox/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/kyuofox/config/telephony.mk)
