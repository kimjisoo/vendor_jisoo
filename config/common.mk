# Sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Playa.ogg \
    ro.config.notification_sound=regulus.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg

# Selinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/jisoo/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/jisoo/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/jisoo/prebuilt/bin/50-hosts.sh:system/addon.d/50-hosts.sh \
    vendor/jisoo/prebuilt/bin/blacklist:system/addon.d/blacklist

  
# Additional packages
-include vendor/jisoo/config/packages.mk

# Versioning
-include vendor/jisoo/config/version.mk
