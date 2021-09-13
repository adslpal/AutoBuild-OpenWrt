#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

sed -i 's/tplink-4mlzma/tplink-16mlzma/g' openwrt/target/linux/ath79/image/tiny-tp-link.mk

sed -i 's/0x3d0000/0xfd0000/g' openwrt/target/linux/ath79/dts/qca9533_tplink_tl-wr802n.dtsi
sed -i 's/0x3f0000/0xff0000/g' openwrt/target/linux/ath79/dts/qca9533_tplink_tl-wr802n.dtsi

sed -i 's/0x3d0000/0xfd0000/g' openwrt/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
sed -i 's/0x3f0000/0xff0000/g' openwrt/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
