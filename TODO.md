## TODO:

## General:
* make sure meta-resin upstream supports overlayFS and it's possible to use docker `overlay2` storage driver
* currently this build relies on a fork of meta-sunxi here: https://github.com/shaunmulligan/meta-sunxi (figure out how to not have to use a fork)
* integrate with resin-uboot patches to support resinHUP
* create a flasher type to boot from eMMC.

### Orange Pi Lite (mostly working)
* weird bug with docker network interface not being able to bind to 172.17.0.1, had to work around it by adding `--bip 172.17.0.1/16` to the docker.service file.
* missing analog-codec.dtbo from /mnt/boot/dtb/overlay


### Orange Pi Plus 2E:
* Ethernet not working
* wifi not working
* make bootable from eMMC