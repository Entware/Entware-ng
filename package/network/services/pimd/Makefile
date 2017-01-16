#
# Copyright (C) 2017 Joakim Plate <joakim.plate@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=pimd
PKG_VERSION:=2.4.0
PKG_REV:=9f387158a346829973da2d47a05a56af0b0627fb
PKG_RELEASE:=beta1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL=https://github.com/troglobit/pimd.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=$(PKG_REV)

PKG_LICENSE_FILE:=LICENCE
PKG_FIXUP:=autoreconf
PKG_REMOVE_FILES:=autogen.sh aclocal.m4
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/pimd
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Routing and Redirection
  DEPENDS:=
  TITLE:=multicast routing daemon (PIM-SM/SSM)
  URL:=https://github.com/troglobit/pimd
endef

define Package/pimd/description
  pimd is a lightweight, stand-alone PIM-SM/SSM multicast routing
  daemon available under the free 3-clause BSD license. This is the
  restored original version from University of Southern California,
  by Ahmed Helmy, Rusty Eddy and Pavlin Ivanov Radoslavov.
endef

define Package/pimd/conffiles
  /opt/etc/pimd.conf
endef

define Package/pimd/install
	$(INSTALL_DIR) $(1)/opt/etc/
	$(INSTALL_CONF) $(PKG_INSTALL_DIR)/opt/share/doc/pimd/pimd.conf $(1)/opt/etc/
	$(INSTALL_DIR) $(1)/opt/etc/init.d
	$(INSTALL_BIN) ./files/S69pimd $(1)/opt/etc/init.d/
	$(INSTALL_DIR) $(1)/opt/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/opt/sbin/* $(1)/opt/sbin/
endef

$(eval $(call BuildPackage,pimd))

