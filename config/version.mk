# Versioning of the ROM
 ROM_VERSION := $(PLATFORM_VERSION)-$(shell date +%Y%m%d)-$(DK_RELEASE_TYPE)-$(subst dk_,,$(TARGET_PRODUCT))
 JISOO_VERSION := $(PLATFORM_VERSION)-$(JISOO_RELEASE_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.jisoo.version=$(ROM_VERSION)

