#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 25587712 42711d33d6b7511f14f9bb653b00f800cc0dd64f 23160832 d2fc8d5c8531f35d957f03dc03cbb39fed9e6615
fi
if ! applypatch -c EMMC:/dev/block/platform/hi_mci.0/by-name/recovery:25587712:42711d33d6b7511f14f9bb653b00f800cc0dd64f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/hi_mci.0/by-name/boot:23160832:d2fc8d5c8531f35d957f03dc03cbb39fed9e6615 EMMC:/dev/block/platform/hi_mci.0/by-name/recovery 42711d33d6b7511f14f9bb653b00f800cc0dd64f 25587712 d2fc8d5c8531f35d957f03dc03cbb39fed9e6615:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
