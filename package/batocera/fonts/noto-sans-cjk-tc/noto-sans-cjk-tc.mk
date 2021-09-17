################################################################################
#
# Noto Sans CJK TC fonts
#
################################################################################

NOTO_SANS_CJK_TC_SITE = https://noto-website-2.storage.googleapis.com/pkgs
NOTO_SANS_CJK_TC_SOURCE = NotoSansCJKtc-hinted.zip
NOTO_SANS_CJK_TC_LICENSE = OFL
NOTO_SANS_CJK_TC_LICENSE_FILES = LICENSE_OFL.txt

ifeq ($(BR2_PACKAGE_FONTCONFIG),y)
define NOTO_SANS_CJK_TC_FONTCONFIG_CONF_INSTALL_CMDS
	$(INSTALL) -D -m 0644 \
        $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/fonts/noto-sans-cjk-tc/52-noto-sans-cjk-tc.conf \
	    $(TARGET_DIR)/usr/share/fontconfig/conf.avail/52-noto-sans-cjk-tc.conf
endef
endif

define NOTO_SANS_CJK_TC_EXTRACT_CMDS
	$(UNZIP) -d $(@D) $(NOTO_SANS_CJK_TC_DL_DIR)/$(NOTO_SANS_CJK_TC_SOURCE)
endef

define NOTO_SANS_CJK_TC_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0644 $(@D)/NotoSansCJKtc-Regular.otf \
        $(TARGET_DIR)/usr/share/fonts/noto-sans-cjk-tc/NotoSansCJKtc-Regular.otf
    $(NOTO_SANS_CJK_TC_FONTCONFIG_CONF_INSTALL_CMDS)
endef

$(eval $(generic-package))
