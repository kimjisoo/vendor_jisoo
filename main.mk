PRODUCT_PACKAGE_OVERLAYS += vendor/yashar/overlay/

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.com.android.dateformat=yyyy-MM-dd

PRODUCT_COPY_FILES += \
    vendor/yashar/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/yashar/prebuilt/common/app/Substratum/Substratum.apk:system/app/Substratum/Substratum.apk \
    vendor/yashar/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/yashar/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/yashar/prebuilt/common/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so \
    vendor/yashar/prebuilt/common/lib64/libjni_keyboarddecoder.so:system/lib64/libjni_keyboarddecoder.so

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Titania.ogg \
    ro.config.notification_sound=Tethys.ogg \
    ro.config.alarm_alert=Oxygen.ogg

# show selinux status
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

PRODUCT_PACKAGES += \
    Camera2 \
    LockClock \
    Masquerade \
    SlimLauncher \
    OmniSwitch

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

# DU Utils Library
PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils
