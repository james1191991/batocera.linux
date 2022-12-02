################################################################################
#
# retroarch-assets
#
################################################################################
# Version:Commits on Oct 24, 2022
RETROARCH_ASSETS_VERSION = 4ec80faf1b5439d1654f407805bb66141b880826
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
