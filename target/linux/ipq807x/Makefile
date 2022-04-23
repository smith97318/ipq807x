include $(TOPDIR)/rules.mk

ARCH:=aarch64
BOARD:=ipq807x
BOARDNAME:=Qualcomm Atheros IPQ807x
FEATURES:=squashfs ramdisk fpu nand emmc
KERNELNAME:=Image dtbs
CPU_TYPE:=cortex-a53
SUBTARGETS:=generic

KERNEL_PATCHVER:=5.15

include $(INCLUDE_DIR)/target.mk
DEFAULT_PACKAGES += \
	kmod-usb3 kmod-usb-dwc3 kmod-usb-dwc3-qcom \
	kmod-leds-gpio kmod-gpio-button-hotplug \
	ath11k-firmware-ipq8074 kmod-ath11k-ahb \
	wpad-wolfssl uboot-envtools \
	autocore-arm \
        kmod-qca-nss-dp \
        luci luci-compat luci-lib-base luci-lib-ipkg \
        luci-app-arpbind luci-app-autoreboot luci-app-ttyd \
        luci-proto-openconnect \
        htop iptables-legacy ip6tables-legacy

$(eval $(call BuildTarget))
