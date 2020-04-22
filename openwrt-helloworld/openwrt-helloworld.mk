include $(TOPDIR)/rules.mk
PKG_NAME:=openwrt-helloworld
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_SOURCE_NAME:=$(PKG_NAME)-$(PKG_VERSION)
PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
define Package/openwrt-helloworld
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=helloworld -- Just an example
endef

define Package/openwrt-helloworld/description
    If you can't figure out what this program does, you're probably
    brain-dead and need immediate medical attention.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/openwrt-helloworld/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) helloworld $(1)/bin/
endef

$(eval $(call BuildPackage,openwrt-helloworld))


