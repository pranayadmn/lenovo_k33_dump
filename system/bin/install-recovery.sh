#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:30432556:a5f28f6299e5623b3e592b276a9b638fd0280071; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26889512:aba2fad492d173ea3de5ddcd05d6633416331b93 EMMC:/dev/block/bootdevice/by-name/recovery a5f28f6299e5623b3e592b276a9b638fd0280071 30432556 aba2fad492d173ea3de5ddcd05d6633416331b93:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
