#!/bin/bash

#################################################################################
# RootFS Verification Disabler
# For Polygon Policy Editor
# Based on Pollen's RootFS.sh
#################################################################################

clear

echo "=========================================="
echo "  Welcome to Polygon RootFS Disabler"
echo "=========================================="
echo ""
echo "This will disable RootFS verification to make"
echo "policy changes permanent across reboots."
echo ""
echo "⚠️  WARNING:"
echo "  • Your Chromebook will soft-brick if you"
echo "    re-enter verified mode after this!"
echo "  • Only proceed if you understand the risks"
echo ""
echo "=========================================="
echo ""

read -p "Do you want to continue? (yes/no): " confirm

if [[ "$confirm" != "yes" ]]; then
    echo ""
    echo "Aborted. No changes made."
    exit 0
fi

echo ""
echo "[*] Disabling RootFS verification..."
echo ""

# Disable RootFS verification on both partitions
/usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification --partitions 2
/usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification --partitions 4

echo ""
echo "[✓] RootFS verification disabled!"
echo ""
echo "=========================================="
echo ""
echo "NEXT STEPS:"
echo "  1. Reboot your Chromebook: sudo reboot"
echo "  2. After reboot, run Polygon Policy Editor"
echo "  3. Changes will now be permanent!"
echo ""
echo "=========================================="
echo ""
