# Versioning System
WINGS_CODENAME := Sky
WINGS_NUM_VER := 1.0

TARGET_PRODUCT_SHORT := $(subst wings_,,$(WINGS_BUILD_TYPE))

WINGS_BUILD_TYPE ?= unofficial

# Sign builds if building an official build
ifeq ($(filter-out official,$(WINGS_BUILD_TYPE)),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(KEYS_LOCATION)
endif

# Set all versions
BUILD_DATE := $(shell date -u +%Y%m%d)
BUILD_TIME := $(shell date -u +%H%M)
WINGS_BUILD_VERSION := $(WINGS_NUM_VER)-$(WINGS_CODENAME)
WINGS_VERSION := $(WINGS_BUILD_VERSION)-$(WINGS_BUILD)-$(WINGS_BUILD_TYPE)-$(BUILD_TIME)-$(BUILD_DATE)
ROM_FINGERPRINT := WINGS/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(BUILD_TIME)
WINGS_DISPLAY_VERSION := $(WINGS_VERSION)
RELEASE_TYPE := $(WINGS_BUILD_TYPE)

# WingsOS system version
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.wings.base.codename=$(WINGS_CODENAME) \
    ro.wings.base.version=$(WINGS_NUM_VER) \
    ro.wings.build.version=$(WINGS_BUILD_VERSION) \
    ro.wings.build.date=$(BUILD_DATE) \
    ro.wings.buildtype=$(WINGS_BUILD_TYPE) \
    ro.wings.display.version=$(WINGS_DISPLAY_VERSION) \
    ro.wings.fingerprint=$(ROM_FINGERPRINT) \
    ro.wings.version=$(WINGS_VERSION) \
    ro.modversion=$(WINGS_VERSION)
