#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# Add customize apps
# apt update -y
# apt full-upgrade -y
# apt install -y ack antlr3 asciidoc autoconf automake autopoint binutils bison build-essential bzip2 ccache cmake cpio curl device-tree-compiler fastjar flex gawk gettext gcc-multilib g++-multilib git gperf haveged help2man intltool libc6-dev-i386 libelf-dev libglib2.0-dev libgmp3-dev libltdl-dev libmpc-dev libmpfr-dev libncurses5-dev libncursesw5-dev libreadline-dev libssl-dev libtool lrzsz mkisofs msmtp nano ninja-build p7zip p7zip-full patch pkgconf python2.7 python3 python3-pyelftools libpython3-dev qemu-utils rsync scons squashfs-tools subversion swig texinfo uglifyjs upx-ucl unzip vim wget xmlto xxd zlib1g-dev
# git clone https://github.com/coolsnowwolf/lede
# cd lede
git clone --depth 1 --branch master --single-branch https://github.com/vernesong/OpenClash package/OpenClash
git clone --depth 1 --branch master --single-branch https://github.com/kuoruan/openwrt-frp package/frp
git clone --depth 1 --branch master --single-branch https://github.com/kuoruan/openwrt-v2ray.git package/v2ray-core
#git clone --depth 1 --branch master --single-branch https://github.com/yichya/openwrt-xray package/openwrt-xray
#git clone --depth 1 --branch master --single-branch https://github.com/yichya/openwrt-xray-geodata-cut package/openwrt-xray-geodata-cut
#git clone --depth 1 --branch master --single-branch https://github.com/yichya/luci-app-xray package/luci-app-xray
# ./scripts/feeds update -a
# ./scripts/feeds install -a
# make menuconfig
