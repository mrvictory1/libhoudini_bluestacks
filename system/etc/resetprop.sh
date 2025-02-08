#!/system/bin/sh
while read line; do /system/etc/resetprop ${line%=*} ${line#*=}; done < /vendor/waydroid.prop
