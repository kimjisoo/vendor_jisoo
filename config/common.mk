
# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/jisoo/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/jisoo/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/jisoo/prebuilt/common/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so \
    vendor/jisoo/prebuilt/common/lib64/libjni_keyboarddecoder.so:system/lib64/libjni_keyboarddecoder.so

# Additional packages
-include vendor/jisoo/config/packages.mk

# Versioning
-include vendor/jisoo/config/version.mk

# APNs
PRODUCT_COPY_FILES += \
    vendor/jisoo/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/jisoo/overlay/dictionaries

# Secure adb
PRODUCT_PROPERTY_OVERRIDES += \
    ro.adb.secure=1

