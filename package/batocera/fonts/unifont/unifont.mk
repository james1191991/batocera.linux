################################################################################
#
# Unifont
#
################################################################################

UNIFONT_VERSION = 14.0.01
UNIFONT_SITE = https://unifoundry.com/pub/unifont/unifont-$(UNIFONT_VERSION)/font-builds
UNIFONT_SOURCE = unifont-$(UNIFONT_VERSION).ttf
UNIFONT_LICENSE = GPL+FE, OFL

define UNIFONT_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0644 $(@D)/unifont-$(UNIFONT_VERSION).ttf \
        $(TARGET_DIR)/usr/share/fonts/unifont.ttf
endef

$(eval $(generic-package))
