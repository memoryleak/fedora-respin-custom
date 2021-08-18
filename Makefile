BUILD_PROJECT=Fedora
BUILD_VERSION=34
BUILD_VARIANT=KDE
BUILD_ARCH=x86_64
BUILD_OUTPUT_DIR=build
BUILD_SRC_DIR=src
BUILD_KICKSTART=kickstart-kde
BUILD_BOOT_ISO=https://mirror.init7.net/fedora/fedora/linux/releases/$(BUILD_VERSION)/Everything/$(BUILD_ARCH)/os/images/boot.iso
BUILD_NUMBER:=$(shell date +%Y-%m-%d-%H%M%S)

iso:
	sudo livemedia-creator  \
		--make-iso \
		--iso boot.iso \
		--iso-only \
		--iso-name $(BUILD_PROJECT)-$(BUILD_VERSION)-$(BUILD_VARIANT)-Live-$(BUILD_NUMBER).iso \
		--ks $(BUILD_OUTPUT_DIR)/flat-$(BUILD_KICKSTART).ks \
		--logfile $(BUILD_OUTPUT_DIR)/log/livemedia.log \
		--tmp $(BUILD_OUTPUT_DIR)/tmp \
		--resultdir $(BUILD_OUTPUT_DIR)/result \
		--macboot \
		--fs-label $(BUILD_PROJECT)-$(BUILD_VERSION)-$(BUILD_VARIANT)-Live \
		--ram 8096 \
		--vcpus 6 \
		--project $(BUILD_PROJECT)  \
		--releasever $(BUILD_VERSION)  \
		--volid $(BUILD_PROJECT)-$(BUILD_VERSION)-$(BUILD_VARIANT)-Live

boot-iso:
	wget -nc -q $(BUILD_BOOT_ISO) -O boot.iso

kickstart:
	ksflatten -c $(BUILD_SRC_DIR)/$(BUILD_KICKSTART).ks -o $(BUILD_OUTPUT_DIR)/flat-$(BUILD_KICKSTART).ks
	patch $(BUILD_OUTPUT_DIR)/flat-$(BUILD_KICKSTART).ks $(BUILD_SRC_DIR)/patches/00-use-authselect-instead.patch
	patch $(BUILD_OUTPUT_DIR)/flat-$(BUILD_KICKSTART).ks $(BUILD_SRC_DIR)/patches/01-change-partsize.patch
	ksvalidator $(BUILD_OUTPUT_DIR)/flat-$(BUILD_KICKSTART).ks

clean:
	sudo rm -rf $(BUILD_OUTPUT_DIR)/
	mkdir -p $(BUILD_OUTPUT_DIR)/{tmp,log,tmpdir}

all: clean kickstart iso
