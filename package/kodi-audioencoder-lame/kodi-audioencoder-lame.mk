################################################################################
#
# kodi-audioencoder-lame
#
################################################################################

KODI_AUDIOENCODER_LAME_VERSION = f272aeb7aeb94e9d8bf1454e23f0232790bf0ef6
KODI_AUDIOENCODER_LAME_SITE = $(call github,xbmc,audioencoder.lame,$(KODI_AUDIOENCODER_LAME_VERSION))
KODI_AUDIOENCODER_LAME_LICENSE = GPL-2.0+
KODI_AUDIOENCODER_LAME_LICENSE_FILES = LICENSE.md
KODI_AUDIOENCODER_LAME_DEPENDENCIES = kodi lame
KODI_AUDIOENCODER_LAME_CONF_OPTS += \
	-DLAME_INCLUDE_DIRS=$(STAGING_DIR)/usr/include

ifeq ($(BR2_ENABLE_LOCALE),)
KODI_AUDIOENCODER_LAME_DEPENDENCIES += libiconv
endif

$(eval $(cmake-package))
