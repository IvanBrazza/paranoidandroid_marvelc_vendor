# Check for target product
ifeq (pa_marvelc,$(TARGET_PRODUCT))
 
# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI
   
# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit CM9 device configuration
include $(call all-subdir-makefiles)
$(call inherit-product, device/htc/marvelc_pa/cm.mk)
    
PRODUCT_NAME := pa_marvelc
    
GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))
    
endif
