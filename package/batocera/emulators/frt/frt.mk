################################################################################
#
# frt
#
################################################################################

FRT_VERSION = 110
FRT_TARGET_GODOT_VERSION = 344
FRT_SOURCE = frt_$(FRT_VERSION)_$(FRT_TARGET_GODOT_VERSION).zip
FRT_SITE = https://versaweb.dl.sourceforge.net/project/frt/1.1.0
FRT_LICENSE = MIT

define FRT_EXTRACT_CMDS
	$(UNZIP) -d $(@D) $(FRT_DL_DIR)/$(FRT_SOURCE)
endef

define FRT_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/frt_$(FRT_VERSION)_$(FRT_TARGET_GODOT_VERSION)_arm64v8.bin $(TARGET_DIR)/usr/bin/frt
endef

$(eval $(generic-package))