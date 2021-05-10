################################################################################
#
# frt
#
################################################################################

FRT_VERSION = 100
FRT_TARGET_GODOT_VERSION = 330
FRT_SOURCE = frt_$(FRT_VERSION)_$(FRT_TARGET_GODOT_VERSION).zip
FRT_SITE = https://phoenixnap.dl.sourceforge.net/project/frt/1.0.0
FRT_LICENSE = MIT

define FRT_EXTRACT_CMDS
	$(UNZIP) -d $(@D) $(FRT_DL_DIR)/$(FRT_SOURCE)
endef

define FRT_INSTALL_TARGET_CMDS
	cp -p $(@D)/frt_100_330_arm64.bin $(TARGET_DIR)/usr/bin/frt
endef

$(eval $(generic-package))