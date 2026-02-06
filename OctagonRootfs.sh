#!/bin/bash

#################################################################################
# RootFS Verification Disabler
# For Octagon Policy Editor
# Based on Pollen's RootFS.sh
#################################################################################

clear

echo "==========================================
        Welcome to Octagon RootFS Disabler
      ==========================================

      This will disable RootFS verification to make
      Policy changes are permanent across reboots.

       ⚠️  WARNING:
        • Your Chromebook will soft-brick if you
          re-enter verified mode after this!
        • Only proceed if you understand the risks and have at least one brain cell

      ==========================================

      [*] Disabling RootFS verification..."
echo ""

# Disable RootFS verification on both partitions
read -p 'Disable RootFS verification (y, n)? ' ANS

if [[ $ANS -eq 'y' ]]; then 

sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk0 --remove_rootfs_verification --partitions 2
sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk0 --remove_rootfs_verification --partitions 4
sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk1 --remove_rootfs_verification --partitions 2
sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk1 --remove_rootfs_verification --partitions 4
echo 'RootFS has been disabled! (or already was)'

else 
  exit 1


fi 

echo 'if you receive an error saying something like "cannot find required file /dev/mmcblk0" you may need to download or open this file and change the command to match your specific needs, thank you for using Pentgon Policy Editor RootFS disable.'

echo ""
echo "[✓] RootFS verification disabled!

      ==========================================

        NEXT STEPS:
        1. Reboot your Chromebook: sudo reboot.
        2. After reboot, run the Polygon Policy Editor Command.
        3. Changes will now be permanent!

      =========================================="
echo ""
