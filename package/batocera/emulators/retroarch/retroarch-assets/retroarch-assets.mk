################################################################################
#
# RETROARCH ASSETS
#
################################################################################
# Version.:Commits on Mar 13, 2021
RETROARCH_ASSETS_VERSION = 52ab08994b83dda5d3350661c8874bbf3fb1211d
RETROARCH_ASSETS_SITE = $(call github,libretro,retroarch-assets,$(RETROARCH_ASSETS_VERSION))
RETROARCH_ASSETS_LICENSE = GPL

define RETROARCH_ASSETS_INSTALL_TARGET_CMDS
	cp -r $(@D)/branding  $(TARGET_DIR)/usr/share/libretro/assets
	cp -r $(@D)/glui $(TARGET_DIR)/usr/share/libretro/assets
	cp -r $(@D)/menu_widgets $(TARGET_DIR)/usr/share/libretro/assets
	cp -r $(@D)/nxrgui $(TARGET_DIR)/usr/share/libretro/assets
	cp -r $(@D)/ozone $(TARGET_DIR)/usr/share/libretro/assets
	cp -r $(@D)/pkg $(TARGET_DIR)/usr/share/libretro/assets
	cp -r $(@D)/rgui $(TARGET_DIR)/usr/share/libretro/assets
	cp -r $(@D)/sounds $(TARGET_DIR)/usr/share/libretro/assets
	cp -r $(@D)/switch $(TARGET_DIR)/usr/share/libretro/assets
	cp -r $(@D)/xmb  $(TARGET_DIR)/usr/share/libretro/assets
endef

$(eval $(generic-package))
