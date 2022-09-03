#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS:11459072:0888be9fe69e4db07ce8e4657719bbb9b4862ae3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdhci-tegra.3/by-name/LNX:8829440:49a0d7460598c11a64ace30b233d90a2f60a0414 EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS 0888be9fe69e4db07ce8e4657719bbb9b4862ae3 11459072 49a0d7460598c11a64ace30b233d90a2f60a0414:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
