################################################################################
#
# melonds
#
################################################################################

MELONDS_VERSION = 0.9.4
MELONDS_SITE = https://github.com/Arisotura/melonDS.git
MELONDS_SITE_METHOD=git
MELONDS_GIT_SUBMODULES=YES
MELONDS_LICENSE = GPLv2
MELONDS_DEPENDENCIES = sdl2 qt5base slirp

MELONDS_SUPPORTS_IN_SOURCE_BUILD = NO

MELONDS_CONF_OPTS += -DCMAKE_BUILD_TYPE=Release
MELONDS_CONF_ENV += LDFLAGS=-lpthread

define MELONDS_INSTALL_TARGET_CMDS
    $(INSTALL) -D $(@D)/buildroot-build/melonDS \
		$(TARGET_DIR)/usr/bin/
	$(INSTALL) -D -m 0755 $(@D)/buildroot-build/src/teakra/src/libteakra.so \
		$(TARGET_DIR)/usr/lib/
endef

$(eval $(cmake-package))
