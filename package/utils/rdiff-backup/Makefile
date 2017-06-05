#
# Copyright (C) 2006-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
 
include $(TOPDIR)/rules.mk

PKG_NAME:=rdiff-backup
PKG_VERSION:=1.2.8
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://savannah.nongnu.org/download/rdiff-backup/
PKG_MD5SUM:=1a94dc537fcf74d6a3a80bd27808e77b

PKG_BUILD_DEPENDS:=python

include $(INCLUDE_DIR)/package.mk
$(call include_mk, python-package.mk)

define Package/rdiff-backup
  SUBMENU:=backup
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Incremental backup utility
  URL:=http://www.nongnu.org/rdiff-backup
  DEPENDS:=+python +librsync +libpopt +openssl-util
endef

define Package/rdiff-backup/description
	rdiff-backup backs up one directory to another, possibly over a
	network. The target directory ends up a copy of the source directory,
	but extra reverse diffs are stored in a special subdirectory of that
	target directory, so you can still recover files lost some time ago.
	The idea is to combine the best features of a mirror and an incremental
	backup.
endef

define PyPackage/rdiff-backup/filespec
+|/opt/bin/rdiff-backup
+|$(PYTHON_PKG_DIR)/rdiff_backup
endef

define Build/Compile
	$(if $(Build/Compile/PyMod),,@echo Python packaging code not found.; false)
	$(call Build/Compile/PyMod,., \
		build --librsync-dir="$(STAGING_DIR)/opt" , \
	)
	$(call Build/Compile/PyMod,., \
		install --prefix="$(PKG_INSTALL_DIR)/opt", \
	)
endef

$(eval $(call PyPackage,rdiff-backup))
$(eval $(call BuildPackage,rdiff-backup))
