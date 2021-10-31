################################################################################
#
# libretro-pcsx2
#
################################################################################

# Version.: Commits on Oct 30, 2021
LIBRETRO_PCSX2_VERSION = 282fce6ce6d72ab2e61d13aecb81ed428a83dee9
LIBRETRO_PCSX2_SITE = https://github.com/libretro/pcsx2.git
LIBRETRO_PCSX2_SITE_METHOD = git
LIBRETRO_PCSX2_GIT_SUBMODULES = YES
LIBRETRO_PCSX2_LICENSE = GPLv2
LIBRETRO_PCSX2_DEPENDENCIES = retroarch libaio xz host-xxd

LIBRETRO_PCSX2_CONF_OPTS += -DCMAKE_BUILD_TYPE=Release
LIBRETRO_PCSX2_CONF_OPTS += -DSDL2_API=ON
LIBRETRO_PCSX2_CONF_OPTS += -DDISABLE_PCSX2_WRAPPER=ON
LIBRETRO_PCSX2_CONF_OPTS += -DPACKAGE_MODE=OFF
LIBRETRO_PCSX2_CONF_OPTS += -DBUILD_SHARED_LIBS=OFF
LIBRETRO_PCSX2_CONF_OPTS += -DENABLE_TESTS=OFF
LIBRETRO_PCSX2_CONF_OPTS += -DENABLE_QT=OFF
LIBRETRO_PCSX2_CONF_OPTS += -DLIBRETRO=ON
LIBRETRO_PCSX2_CONF_OPTS += -DDISABLE_ADVANCE_SIMD=ON
LIBRETRO_PCSX2_CONF_OPTS += -DEXTRA_PLUGINS=TRUE

define LIBRETRO_PCSX2_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/pcsx2/pcsx2_libretro.so \
		$(TARGET_DIR)/usr/lib/libretro/pcsx2_libretro.so
endef

$(eval $(cmake-package))
