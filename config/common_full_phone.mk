# Inherit full common Wings stuff
$(call inherit-product, vendor/wings/config/common_full.mk)

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/wings/config/telephony.mk)
