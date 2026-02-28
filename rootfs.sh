#!/bin/bash

#################################################################################
# RootFS Verification Disabler
# For Octagon Policy Editor
# Based on Pollen's RootFS.sh
#################################################################################

clear

echo "=========================================="
echo "  Welcome to Octagon RootFS Disabler"
echo "=========================================="
echo ""
echo "This will disable RootFS verification to make"
echo "policy changes permanent across reboots."
echo ""
echo "⚠️  WARNING:"
echo "  • Your Chromebook will soft-brick if you"
echo "    re-enter verified mode after this!"
echo "  • Only proceed if you understand the risks and have atleast one braincell"
echo ""
echo "=========================================="
echo ""
echo "[*] Disabling RootFS verification..."
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

echo 'if you recieve an error saying something like "cannot find required file /dev/mmcblk0" you may need to download or open this file and change the command to match your specific needs, thank you for using Pentgon Policy Editor RootFS disable'

echo ""
echo "[✓] RootFS verification disabled!"
echo ""
echo "=========================================="
echo ""
echo "NEXT STEPS:"
echo "  1. Reboot your Chromebook: sudo reboot"
echo "  2. After reboot, run the Polygon Policy Editor Command"
echo "  3. Changes will now be permanent!"
echo ""
echo "=========================================="
echo ""
