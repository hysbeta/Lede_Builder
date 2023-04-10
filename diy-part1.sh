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
wget https://github.com/vernesong/OpenClash/archive/master.zip -O OpenClash.zip
unzip OpenClash.zip
cp -r OpenClash-master/luci-app-openclash package

wget https://github.com/sbwml/luci-app-alist/archive/master.zip -O luci-app-alist.zip
unzip luci-app-alist.zip
cp -r luci-app-alist-master/luci-app-alist package

wget https://github.com/destan19/OpenAppFilter/archive/master.zip -O OpenAppFilter.zip
unzip OpenAppFilter.zip
cp -r OpenAppFilter-master/luci-app-oaf package

wget https://github.com/muink/luci-app-netspeedtest/archive/master.zip -O luci-app-netspeedtest.zip
unzip luci-app-netspeedtest.zip
cp -r luci-app-netspeedtest-master package


