#!/bin/bash

#################################################################################
# RootFS Verification Disabler
# For Octagon Policy Editor
# Based on Pollen's RootFS.sh
#################################################################################

clear

cat << "BANNER"
==========================================
  Welcome to Octagon RootFS Disabler
==========================================

This will disable RootFS verification to make
policy changes permanent across reboots.

  WARNING:
  • Your Chromebook will soft-brick if you
    re-enter verified mode after this!
  • Only proceed if you understand the risks and have at least one braincell

==========================================

BANNER

read -p 'Disable RootFS verification (y, n)? ' ANS

if [[ "$ANS" == 'y' ]]; then

    echo "[*] Disabling RootFS verification..."

    sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk0 --remove_rootfs_verification --partitions 2
    sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk0 --remove_rootfs_verification --partitions 4
    sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk1 --remove_rootfs_verification --partitions 2
    sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk1 --remove_rootfs_verification --partitions 4

    cat << "SUCCESS"
RootFS has been disabled! (or already was)

If you receive an error like "cannot find required file /dev/mmcblk0",
you may need to edit this file and change the device path to match your device.

[✓] RootFS verification disabled!

==========================================

NEXT STEPS:
  1. Reboot your Chromebook: sudo reboot
  2. After reboot, run the Octagon Policy Editor command
  3. Changes will now be permanent!

==========================================

SUCCESS

else
    exit 1
fi
