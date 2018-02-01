#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/hi_mci.0/by-name/recovery:25800704:7931463ddbe0df912f919d956ef975b5e2c31535; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/hi_mci.0/by-name/boot:23336960:eb2c2b1b3634748b6bfc832b0a36b8b4939cbadd EMMC:/dev/block/platform/hi_mci.0/by-name/recovery 7931463ddbe0df912f919d956ef975b5e2c31535 25800704 eb2c2b1b3634748b6bfc832b0a36b8b4939cbadd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
