#!/bin/sh

# 下载源码
git clone --single-branch -b openwrt-23.05 https://github.com/immortalwrt/immortalwrt.git
mv ./immortalwrt/* ./

# 下载插件
SUPPLY_DIR=supply-packages
echo "src-link supply $PWD/$SUPPLY_DIR" >> feeds.conf.default
mkdir $SUPPLY_DIR && cd $SUPPLY_DIR
git clone --depth 1 -b packages https://github.com/xiaorouji/openwrt-passwall.git pw-dependencies
svn export https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall
