$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Wings stuff
$(call inherit-product, vendor/wings/config/common_full.mk)
$(call inherit-product, vendor/wings/config/telephony.mk)

# Settings
PRODUCT_PRODUCT_PROPERTIES += \
    persist.settings.large_screen_opt.enabled=true
