################################################################################
#
# batocera bezel
#
################################################################################
# Version.: Commits on June 04, 2019
BATOCERA_BEZEL_VERSION = c1ba30807c57f5d148ba00cf5ba9f793b2866dae
BATOCERA_BEZEL_SITE = $(call github,batocera-linux,batocera-bezel,$(BATOCERA_BEZEL_VERSION))

define BATOCERA_BEZEL_INSTALL_TARGET_CMDS
        mkdir -p $(TARGET_DIR)/usr/share/batocera/datainit/decorations
	cp -r $(@D)/* $(TARGET_DIR)/usr/share/batocera/datainit/decorations

	# Decorations
	mkdir -p $(TARGET_DIR)/usr/share/batocera/datainit/decorations
	echo -e "You can find help here to find how to customize decorations: \n" \
		> $(TARGET_DIR)/usr/share/batocera/datainit/decorations/readme.txt
	echo "https://batocera-linux.xorhub.com/wiki/doku.php?id=en:customize_decorations_bezels" \
		>> $(TARGET_DIR)/usr/share/batocera/datainit/decorations/readme.txt
endef

$(eval $(generic-package))