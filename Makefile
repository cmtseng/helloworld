include $(TOPDIR)/rules.mk

PKG_NAME:=helloworld
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=apps
	CATEGORY:=Applications
	TITLE:=The Hello World program
	MAINTAINER:=Rodolfo Giometti <giometti@hce-engineering.com>
endef

define Package/$(PKG_NAME)/description
 This package holds a program that display the "hello world" message
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/$(PKG_NAME) $(1)/usr/bin
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
