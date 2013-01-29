# Camera and Gallery
PRODUCT_PACKAGES := \
        Gallery

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers \
        librs_jni

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/amazon/jem/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_jem
PRODUCT_DEVICE := jem
PRODUCT_BRAND := amazon
PRODUCT_MODEL := Kindle Fire HD
PRODUCT_MANUFACTURER := amazon
