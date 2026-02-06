#!/bin/bash

#################################################################################
# Octagon Policy Editor
# Heavily based on Pollen Policy Editor and Pentagon Policy Editor
# https://github.com/MercuryWorkshop/Pollen/
# https://github.com/NonagonWorkshop/Pentagon-Policy-Editor/
#################################################################################

clear

echo "==========================================
        Welcome to Octagon Policy Editor.
      ==========================================

      Heavily based on:
       • Pollen Policy Editor.
          https://github.com/MercuryWorkshop/Pollen/
       •  RIP Pentagon Policy Editor.
          https://github.com/NonagonWorkshop/Pentagon-Policy-Editor/
      Made by GamerRyker, sorry, ClaudeAI, and StarkMist111960. It combines the best of Polygon and Pentagon
      =========================================="
echo ""

echo 'Default Selection: '
echo   "• GoGuardian
        • GoGuardian License.
        • Snap&Read
        • CoWriter
        • Read&Write"
echo '"Ids and other info: haldlgldplgnggkjaafhelgiaglafanh;https://goguardian.com/ext/m.xml,"jjfeehgdeghiknkilcildnjofkcndjcm;https://goguardian.com/licenses/update.php","mloajfnmjckfjbeeofcdaecbelnblden;https://clients2.google.com/service/update2/crx","ifajfiofeifbbhbionejdliodenmecna;https://clients2.google.com/service/update2/crx","inoeonmfapjbbkmdafoankkfajkcphgd;https://clients2.google.com/service/update2/crx"'
echo ''
read -p 'Enter desired extension URLs (leave blank for default selection): ' EXT_LIST
if [[ $EXT_LIST -eq '' ]]; then 
# Build extension force-install shit, recently added Read&Write updates btw
    EXT_LIST='"haldlgldplgnggkjaafhelgiaglafanh;https://goguardian.com/ext/m.xml","jjfeehgdeghiknkilcildnjofkcndjcm;https://goguardian.com/licenses/update.php","mloajfnmjckfjbeeofcdaecbelnblden;https://clients2.google.com/service/update2/crx","ifajfiofeifbbhbionejdliodenmecna;https://clients2.google.com/service/update2/crx","inoeonmfapjbbkmdafoankkfajkcphgd;https://clients2.google.com/service/update2/crx"'
fi

# Create policy directory if needed
mkdir -p /etc/opt/chrome/policies/managed

# Create the policy JSON file
cat > /etc/opt/chrome/policies/managed/polygon_policy.json << EOF
{
  "SecondaryGoogleAccountSigninAllowed": true,
  "URLBlocklist": [],
  "SystemFeaturesDisableList": [],
  "EditBookmarksEnabled": true,
  "ChromeOsMultiProfileUserBehavior": "unrestricted",
  "DeveloperToolsAvailability": 1,
  "DefaultPopupsSetting": 1,
  "AllowDeletingBrowserHistory": true,
  "AllowDinosaurEasterEgg": true,
  "IncognitoModeAvailability": 0,
  "AllowScreenLock": true,
  "ExtensionAllowedTypes": null,
  "ExtensionInstallAllowlist": null,
  "ExtensionInstallBlocklist": null,
  "ExtensionInstallForcelist": [$EXT_LIST],
  "ExtensionSettings": null,
  "PasswordManagerEnabled": true,
  "TaskManagerEndProcessEnabled": true,
  "UptimeLimit": null,
  "SystemTerminalSshAllowed": true,
  "SystemTimezone": "",
  "IsolatedAppsDeveloperModeAllowed": true,
  "ForceGoogleSafeSearch": false,
  "ForceYouTubeRestrict": 0,
  "EasyUnlockAllowed": true,
  "DisableSafeBrowsingProceedAnyway": false,
  "DeviceAllowNewUsers": true,
  "DevicePowerAdaptiveChargingEnabled": true,
  "DeviceGuestModeEnabled": true,
  "BrowserGuestModeEnabled": true,
  "DeviceUnaffiliatedCrostiniAllowed": true,
  "VirtualMachinesAllowed": true,
  "CrostiniAllowed": true,
  "DefaultCookiesSetting": 1,
  "VmManagementCliAllowed": true,
  "WifiSyncAndroidAllowed": true,
  "DeveloperToolsDisabled": false,
  "DeviceBlockDevmode": false,
  "UserBorealisAllowed": true,
  "InstantTetheringAllowed": true,
  "NearbyShareAllowed": true,
  "PinnedLauncherApps": null,
  "PrintingEnabled": true,
  "SmartLockSigninAllowed": true,
  "PhoneHubAllowed": true,
  "LacrosAvailability": "user_choice",
  "WallpaperImage": null,
  "ArcPolicy": {
    "playStoreMode": "ENABLED",
    "installType": "FORCE_INSTALLED",
    "playEmmApiInstallDisabled": false,
    "dpsInteractionsDisabled": false
  },
  "DnsOverHttpsMode": "automatic",
  "BrowserLabsEnabled": true,
  "ChromeOsReleaseChannelDelegated": true,
  "SafeSitesFilterBehavior": 0,
  "SafeBrowsingProtectionLevel": 0,
  "DownloadRestrictions": 0,
  "ProxyMode": "system",
  "ProxyServerMode": "system",
  "NetworkThrottlingEnabled": false,
  "NetworkPredictionOptions": 0,
  "AllowedDomainsForApps": "",
  "DeviceUserAllowlist": "",
  "DeviceAllowNewUser": 1
}
EOF

echo "[✓] Policies configured successfully!

     Extensions force-installed: 
     $EXT_LIST

     User policies modified (50+ policies changed)

      Done! Policies have been applied.
      Visit chrome://policy and reload your policies!"
echo ""
