# Copyright (C), 2008-2030, OPLUS Mobile Comm Corp., Ltd
###  All rights reserved.
###
### File: - OplusKernelEnvConfig.mk
### Description:
###     you can get the oplus feature variables set in android side in this file
###     this file will add global macro for common oplus added feature
###     BSP team can do customzation by referring the feature variables
### Version: 1.0
### Date: 2020-03-18
### Author: Liang.Sun
###
### ------------------------------- Revision History: ----------------------------
### <author>                        <date>       <version>   <desc>
### ------------------------------------------------------------------------------
##################################################################################

-include ../out/oplus_native_features.mk

OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET :=

ifeq ($(OPLUS_FEATURE_WIFI_MTUDETECT), yes)
OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET += OPLUS_FEATURE_WIFI_MTUDETECT
endif

ifeq ($(OPLUS_FEATURE_WIFI_LIMMITBGSPEED), yes)
OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET += OPLUS_FEATURE_WIFI_LIMMITBGSPEED
endif


$(foreach myfeature,$(OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET),\
    $( \
        $(eval KBUILD_CFLAGS += -D$(myfeature)) \
        $(eval KBUILD_CPPFLAGS += -D$(myfeature)) \
        $(eval CFLAGS_KERNEL += -D$(myfeature)) \
        $(eval CFLAGS_MODULE += -D$(myfeature)) \
    ) \
)

ALLOWED_MCROS := OPLUS_FEATURE_HANS_FREEZE \
OPLUS_FEATURE_NFC_CONSOFT \
OPLUS_FEATURE_ONSCREENFINGERPRINT \
OPLUS_FEATURE_SENSOR \
OPLUS_FEATURE_SENSOR_ALGORITHM \
OPLUS_FEATURE_TP_BSPFWUPDATE \
OPLUS_FEATURE_TP_BASIC \
OPLUS_FEATURE_CHG_BASIC \
OPLUS_FEATURE_WIFI_LIMMITBGSPEED \
OPLUS_FEATURE_WIFI_MTUDETECT \
OPLUS_FEATURE_WIFI_RUSUPGRADE \
OPLUS_FEATURE_WIFI_SLA \
OPLUS_FEATURE_DATA_EVAL \
OPLUS_FEATURE_WIFI_SMART_BW \
OPLUS_FEATURE_IPV6_OPTIMIZE \
OPLUS_FEATURE_SDCARDFS_SUPPORT \
OPLUS_FEATURE_STORAGE_TOOL \
OPLUS_BUG_COMPATIBILITY \
OPLUS_FEATURE_MIDAS \
OPLUS_BUG_STABILITY \
OPLUS_ARCH_EXTENDS \
VENDOR_EDIT \
OPLUS_FEATURE_STORAGE_TOOL \
OPLUS_FEATURE_CAMERA_COMMON \
OPLUS_FEATURE_WIFI_OPLUSWFD \
OPLUS_FEATURE_WIFI_PKAT

$(foreach myfeature,$(ALLOWED_MCROS),\
         $(eval KBUILD_CFLAGS += -D$(myfeature)) \
         $(eval KBUILD_CPPFLAGS += -D$(myfeature)) \
         $(eval CFLAGS_KERNEL += -D$(myfeature)) \
         $(eval CFLAGS_MODULE += -D$(myfeature)) \
)
