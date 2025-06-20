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

# Uncomment feed sources
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Remove feed sources
sed -i '/telephony/d' feeds.conf.default

# Add feed sources
echo 'src-git packages https://github.com/immortalwrt/packages.git;openwrt-24.10' >> feeds.conf.default
echo 'src-git luci https://github.com/immortalwrt/luci.git;openwrt-24.10' >> feeds.conf.default
echo 'src-git routing https://github.com/openwrt/routing.git;openwrt-24.10' >> feeds.conf.default
echo 'src-git telephony https://github.com/openwrt/telephony.git;openwrt-24.10' >> feeds.conf.default
