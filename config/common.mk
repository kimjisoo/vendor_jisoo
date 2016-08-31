# Selinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/jisoo/prebuilt/common/app/Amaze/Amaze.apk:system/app/Amaze/Amaze.apk \
    vendor/jisoo/prebuilt/common/app/Etar/Etar.apk:system/app/Etar/Etar.apk \
    vendor/jisoo/prebuilt/common/app/FDroid/FDroid.apk:system/app/FDroid/FDroid.apk \
    vendor/jisoo/prebuilt/common/app/SlimLauncher/SlimLauncher.apk:system/app/SlimLauncher/SlimLauncher.apk \
    vendor/jisoo/prebuilt/common/app/Superuser/Superuser.apk:system/app/Superuser/Superuser.apk \
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
