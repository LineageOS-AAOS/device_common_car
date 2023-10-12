# Car init.rc
PRODUCT_COPY_FILES += \
    packages/services/Car/car_product/init/init.bootstat.rc:root/init.bootstat.rc \
    packages/services/Car/car_product/init/init.car.rc:root/init.car.rc

# Hidl
PRODUCT_PACKAGES += \
    android.hardware.automotive.vehicle@2.0-service \
    android.hardware.automotive.audiocontrol@1.0-service

# Multi-user properties
PRODUCT_SYSTEM_DEFAULT_PROPERTIES := \
    android.car.number_pre_created_users=1 \
    android.car.number_pre_created_guests=1

# Landscape Mode
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.screen.landscape.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.screen.landscape.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.type.automotive.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.type.automotive.xml

# Secondary Display
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.activities_on_secondary_displays.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.activities_on_secondary_displays.xml