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
# git clone https://github.com/coolsnowwolf/lede
# cd lede
git clone --depth 1 --branch master --single-branch https://github.com/vernesong/OpenClash package/OpenClash
git clone --depth 1 --branch master --single-branch https://github.com/sbwml/luci-app-alist package/alist
git clone --depth 1 --branch master --single-branch https://github.com/destan19/OpenAppFilter package/OpenAppFilter
git clone --depth 1 --branch master --single-branch https://github.com/muink/luci-app-netspeedtest package/luci-app-netspeedtest
# ./scripts/feeds update -a
# ./scripts/feeds install -a
# make menuconfig
