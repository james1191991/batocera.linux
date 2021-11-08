################################################################################
#
# RETROARCH ASSETS
#
################################################################################
# Version.:Commits on Oct 27, 2021
RETROARCH_ASSETS_VERSION = 9c22505bed22370d4b81d10429afc9e0d6cc11ff
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
