################################################################################
#
# GLSLANG
#
################################################################################

GLSLANG_VERSION = 9b20b25138bfe916173c9341075b996be14baa69
GLSLANG_SITE =  https://github.com/KhronosGroup/glslang
GLSLANG_SITE_METHOD=git
GLSLANG_DEPENDENCIES = vulkan-headers vulkan-loader
GLSLANG_INSTALL_STAGING = YES
GLSLANG_SUPPORTS_IN_SOURCE_BUILD = NO

GLSLANG_CONF_OPTS += -DCMAKE_BUILD_TYPE=Release
GLSLANG_CONF_ENV += LDFLAGS="--lpthread -ldl"

ifeq ($(BR2_PACKAGE_MESA3D),y)
GLSLANG_DEPENDENCIES += mesa3d
endif


$(eval $(cmake-package))
$(eval $(host-cmake-package))
