#
# Copyright (C) 2006-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=mrouted
PKG_VERSION:=3.9.8
PKG_RELEASE:=$(PKG_SOURCE_VERSION)

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL=https://github.com/troglobit/mrouted.git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=3.9.8
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk

PKG_LICENSE:=3-clause BSD

define Package/mrouted
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Routing and Redirection
  DEPENDS:=
  TITLE:=Multicast Routing Daemon (mrouted)
  URL:=https://github.com/troglobit/mrouted
endef

define Package/mrouted/description
  mrouted is a 3-clause BSD licensed implementation of the DVMRP multicast routing protocol. It can run on any UNIX based system, from embedded Linux systems to workstations, turning them into multicast routers with tunnel support, which can be used to cross non-multicast-aware routers.
endef

define Package/mrouted/conffiles
/opt/etc/mrouted.conf
endef

TARGET_CFLAGS += -std=gnu99
CONFIGURE_ARGS = --with-includes=$(LINUX_DIR)
MAKE_FLAGS += prefix=/opt/ sysconfdif=/opt/etc/

define Package/mrouted/install
	$(INSTALL_DIR) $(1)/opt/etc/
	$(INSTALL_CONF) $(PKG_BUILD_DIR)/mrouted.conf $(1)/opt/etc/
	$(INSTALL_DIR) $(1)/opt/etc/init.d
	$(INSTALL_BIN) ./files/S69mrouted $(1)/opt/etc/init.d/
	$(INSTALL_DIR) $(1)/opt/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/mrouted $(PKG_BUILD_DIR)/map-mbone $(PKG_BUILD_DIR)/mrinfo $(PKG_BUILD_DIR)/mtrace  $(1)/opt/sbin/
endef

$(eval $(call BuildPackage,mrouted))

