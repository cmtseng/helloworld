include $(TOPDIR)/rules.mk

PKG_NAME:=helloworld
PKG_VERSION:=1
PKG_RELEASE:=1
PKG_LICENSE: Zyxel
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/cmtseng/helloworld.git
PKG_MIRROR_HASH:=a84abb2e9f6f63c343bbb59204318fbdf39f6c243983d544db25c3eac5d7f30e
PKG_SOURCE_DATE:=2020-04-14
PKG_SOURCE_VERSION:=e39fa1726815b504c7fad29fa587c45493e81dc3
PKG_SOURCE:=$(PKG_NAME).tar.gz
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_CAT:=zcat

include $(INCLUDE_DIR)/package.mk

define Package/helloworld
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=helloworld -- Just an example
	URL:=https://github.com/cmtseng/git-sutdy.git
endef

define Package/helloworld/description
	If you can't figure out what this program does, you're probably
	brain-dead and need immediate medical attention.
endef

define Package/helloworld/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/helloworld $(1)/bin/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

