# Inherit AOSP device configuration for passion.
$(call inherit-product, device/motorola/sholes/sholes.mk)

PRODUCT_SPECIFIC_DEFINES += DEFAULT_LAUNCHER=true

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_sholes
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholes
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6-$(shell date +%m%d%Y)-NIGHTLY-Droid
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6.0.0-Droid-alpha2
endif

PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=FRF84B BUILD_DISPLAY_ID=FRF84B PRODUCT_NAME=voles TARGET_DEVICE=sholes BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.2/FRF84B/42477:user/release-keys PRODUCT_BRAND=verizon PRIVATE_BUILD_DESC="voles-user 2.2 FRF84B 42477 release-keys" BUILD_NUMBER=42477 BUILD_UTC_DATE=1277333704 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=android-build

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/passion/media/bootanimation.zip:system/media/bootanimation.zip