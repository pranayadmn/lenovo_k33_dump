#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:26914092:3859e98e86456ef798010a544f322b5809ad1023; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23549224:ffce0c641d5257edd121cf45ffb461beff8dd21a EMMC:/dev/block/bootdevice/by-name/recovery 3859e98e86456ef798010a544f322b5809ad1023 26914092 ffce0c641d5257edd121cf45ffb461beff8dd21a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
