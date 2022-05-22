################################################################################
#
# frt 2.0
#
################################################################################

FRT2_VERSION = 200
FRT2_TARGET_GODOT_VERSION = 344
FRT2_SOURCE = frt_$(FRT2_VERSION)_$(FRT2_TARGET_GODOT_VERSION).zip
FRT2_SITE = https://versaweb.dl.sourceforge.net/project/frt/2.0.0
FRT2_LICENSE = MIT

define FRT2_EXTRACT_CMDS
	$(UNZIP) -d $(@D) $(FRT2_DL_DIR)/$(FRT2_SOURCE)
endef

define FRT2_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/frt_$(FRT2_VERSION)_$(FRT2_TARGET_GODOT_VERSION)_arm64v8.bin $(TARGET_DIR)/usr/bin/frt2
endef

$(eval $(generic-package))
