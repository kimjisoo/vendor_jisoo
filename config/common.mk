
# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/jisoo/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Additional packages
-include vendor/jisoo/config/packages.mk

# Versioning
-include vendor/jisoo/config/version.mk

# APNs
PRODUCT_COPY_FILES += \
    vendor/jisoo/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/jisoo/overlay/dictionaries
