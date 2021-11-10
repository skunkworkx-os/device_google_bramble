BUILD_GMS := yes
ifneq ($(wildcard vendor/google)$(wildcard vendor/partner_gms),)
-include vendor/google/products/gms.mk
-include vendor/partner_gms/products/gms.mk
PRODUCT_SHIPPING_API_LEVEL :=

PRODUCT_PACKAGES := $(filter-out CalendarGoogle, $(PRODUCT_PACKAGES))
PRODUCT_PACKAGES := $(filter-out GoogleContacts, $(PRODUCT_PACKAGES))

PRODUCT_PACKAGES += \
	phh-gapps-overrides \
	Chrome \
	GoogleContactsSyncAdapter \
	talkback \

PRODUCT_SYSTEM_DEFAULT_PROPERTIES := $(filter-out ro.boot.vendor.overlay.theme=%,$(PRODUCT_SYSTEM_DEFAULT_PROPERTIES))
endif

