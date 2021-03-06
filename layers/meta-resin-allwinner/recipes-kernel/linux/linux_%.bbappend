inherit kernel-resin

SRC_URI_remove = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=git;branch=master"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

PV = "4.11.0+git${SRCPV}"
SRCREV_pn-${PN} = "22521549cdcd4d701cf3079c3a822bda5324df9c"
SRC_URI_append = "git://github.com/megous/linux.git;protocol=git;branch=orange-pi-4.11 \
    file://411-fix-i2c2-reg-property.patch \
    file://411-add-thermal-otg-wireless-opi-lite.patch \
    file://411-enable-1200mhz-on-small-orangepis.patch \
    file://411-add-spi-aliases.patch \
    file://411-add-uart-rts-cts-pins.patch \
    file://411-add-configfs-overlay-for-v4.11.x.patch \
    file://411-add-h3-overlays.patch \
    file://411-add-overlay-compilation-support.patch \
    file://411-scripts-dtc-import-updates.patch \
    file://411-add-ad9834-dt-bindings.patch \
"

SRC_URI_append_orange-pi-lite = " \
    file://411-add-realtek-8189fs-driver.patch \
"

RESIN_CONFIGS_append = " \
    configfs \
    sunxi \
    audio \
    "

RESIN_CONFIGS[configfs] ?= " \
    CONFIG_OF_CONFIGFS=y \
    "

RESIN_CONFIGS_DEPS[configfs] ?= " \
    CONFIG_OF_OVERLAY=y \
    "

RESIN_CONFIGS_append_orange-pi-lite = " \
    8189fs \
    "

RESIN_CONFIGS[8189fs] ?= " \
    CONFIG_RTL8189FS=m \
    "

RESIN_CONFIGS[sunxi] ?= " \
    CONFIG_MACH_SUN6I=y \
    CONFIG_MACH_SUN8I=y \
    CONFIG_SUNXI_RSB=y \ 
    CONFIG_SUN8I_EMAC=y \
    CONFIG_DWMAC_SUNXI=y \
    CONFIG_MDIO_SUN4I=y \
    CONFIG_TOUCHSCREEN_SUN4I=m \
    CONFIG_I2C_SUN6I_P2WI=m \
    CONFIG_SPI_SUN4I=y \
    CONFIG_SPI_SUN6I=y \
    CONFIG_PINCTRL_SUNXI=y \
    CONFIG_PINCTRL_SUN8I_H3=y \
    CONFIG_PINCTRL_SUN8I_H3_R=y \
    CONFIG_SUN8I_THS=m \
    CONFIG_SUNXI_WATCHDOG=y \
    CONFIG_IR_SUNXI=m \
    CONFIG_SND_SUN4I_CODEC=m \
    CONFIG_SND_SUN8I_CODEC=m \
    CONFIG_SND_SUN8I_CODEC_ANALOG=m \
    CONFIG_SND_SUN4I_I2S=m \
    CONFIG_SND_SUN4I_SPDIF=m \
    CONFIG_USB_MUSB_SUNXI=y \
    CONFIG_MMC_SUNXI=y \
    CONFIG_DMA_SUN6I=y \
    CONFIG_SUNXI_CCU=y \
    CONFIG_SUNXI_CCU_DIV=y \
    CONFIG_SUNXI_CCU_FRAC=y \
    CONFIG_SUNXI_CCU_GATE=y \
    CONFIG_SUNXI_CCU_MUX=y \
    CONFIG_SUNXI_CCU_MULT=y \
    CONFIG_SUNXI_CCU_PHASE=y \
    CONFIG_SUNXI_CCU_NK=y \
    CONFIG_SUNXI_CCU_NKM=y \
    CONFIG_SUNXI_CCU_NKMP=y \
    CONFIG_SUNXI_CCU_NM=y \
    CONFIG_SUNXI_CCU_MP=y \
    CONFIG_SUN8I_H3_CCU=y \
    CONFIG_SUN4I_TIMER=y \
    CONFIG_SUN5I_HSTIMER=y \
    CONFIG_SUNXI_SRAM=y \
    CONFIG_PWM_SUN4I=m \
    CONFIG_RESET_SUNXI=y \
    CONFIG_PHY_SUN4I_USB=y \
    CONFIG_PHY_SUN9I_USB=y \
    CONFIG_CRYPTO_DEV_SUN4I_SS=m \
    "

RESIN_CONFIGS[audio] ?= " \
    CONFIG_SOUND=y \
    CONFIG_USB_AUDIO=m \
    CONFIG_SND=y \
    CONFIG_SND_TIMER=y \
    CONFIG_SND_PCM=m \
    CONFIG_SND_DMAENGINE_PCM=m \
    CONFIG_SND_HWDEP=m \
    CONFIG_SND_RAWMIDI=m \
    CONFIG_SND_JACK=y \
    CONFIG_SND_JACK_INPUT_DEV=y \
    CONFIG_SND_SEQUENCER=m \
    CONFIG_SND_PCM_TIMER=y \
    CONFIG_SND_HRTIMER=y \
    CONFIG_SND_SUPPORT_OLD_API=y \
    CONFIG_SND_PROC_FS=y \
    CONFIG_SND_VERBOSE_PROCFS=y \
    CONFIG_SND_VMASTER=y \
    CONFIG_SND_RAWMIDI_SEQ=m \
    CONFIG_SND_DRIVERS=y \
    CONFIG_SND_DUMMY=m \
    CONFIG_SND_ALOOP=m \
    CONFIG_SND_VIRMIDI=m \
    CONFIG_SND_HDA_PREALLOC_SIZE=64 \
    CONFIG_SND_ARM=y \
    CONFIG_SND_SPI=y \
    CONFIG_SND_USB=y \
    CONFIG_SND_USB_AUDIO=m \
    CONFIG_SND_USB_UA101=m \
    CONFIG_SND_USB_CAIAQ=m \
    CONFIG_SND_USB_6FIRE=m \
    CONFIG_SND_USB_HIFACE=m \
    CONFIG_SND_BCD2000=m \
    CONFIG_SND_USB_LINE6=m \
    CONFIG_SND_USB_POD=m \
    CONFIG_SND_USB_PODHD=m \
    CONFIG_SND_USB_TONEPORT=m \
    CONFIG_SND_USB_VARIAX=m \
    CONFIG_SND_SOC=m \
    CONFIG_SND_SOC_GENERIC_DMAENGINE_PCM=y \
    CONFIG_SND_SUN4I_CODEC=m \
    CONFIG_SND_SUN8I_CODEC=m \
    CONFIG_SND_SUN8I_CODEC_ANALOG=m \
    CONFIG_SND_SUN4I_I2S=m \
    CONFIG_SND_SUN4I_SPDIF=m \
    CONFIG_SND_SOC_I2C_AND_SPI=m \
    CONFIG_SND_SOC_BT_SCO=m \
    CONFIG_SND_SOC_SPDIF=m \
    CONFIG_SND_SIMPLE_CARD_UTILS=m \
    CONFIG_SND_SIMPLE_CARD=m \
    CONFIG_SND_SIMPLE_SCU_CARD=m \
    "