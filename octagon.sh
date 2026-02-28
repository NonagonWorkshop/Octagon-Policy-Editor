#!/bin/bash
#################################################################################
# Octagon Policy Editor
# Heavily based off of Pollen Policy Editor and Pentagon Policy Editor
# https://github.com/MercuryWorkshop/Pollen/
# https://github.com/NonagonWorkshop/Pentagon-Policy-Editor/
#################################################################################
clear

cat << "BANNER"

        Welcome to Octagon

   000  000 TTTTT  AA   GGG   000  NNN  N
  0  0 0  0   T   A  A G     0  0  N NN N
  0  0 0  0   T   AAAA G GGG 0  0  N  NNN
  0  0 0  0   T   A  A G   G 0  0  N   NN
   000  000   T   A  A  GGG   000  N    N

          POLICY EDITOR

Heavily based off of:
   Pollen Policy Editor
    https://github.com/MercuryWorkshop/Pollen/
   Pentagon Policy Editor
    https://github.com/NonagonWorkshop/Pentagon-Policy-Editor/

Made by GamerRyker and StarkMist111960
Combines the best of Polygon and Pentagon

Enter extension IDs in format:
id1;url1,id2;url2,id3;url3

Leave blank for the default selection: (GoGuardian,  GoGuardian License, Snap&Read, CoWriter, Read&Write)

BANNER

read -p 'Extension URLs: ' EXTENSION_LIST

if [[ -z "$EXTENSION_LIST" ]]; then 
    EXTENSION_LIST='"haldlgldplgnggkjaafhelgiaglafanh;https://goguardian.com/ext/m.xml","jjfeehgdeghiknkilcildnjofkcndjcm;https://goguardian.com/licenses/update.php","mloajfnmjckfjbeeofcdaecbelnblden;https://clients2.google.com/service/update2/crx","ifajfiofeifbbhbionejdliodenmecna;https://clients2.google.com/service/update2/crx","inoeonmfapjbbkmdafoankkfajkcphgd;https://clients2.google.com/service/update2/crx"'
fi

EXT_LIST="$EXTENSION_LIST"

mkdir -p /etc/opt/chrome/policies/managed

cat > /etc/opt/chrome/policies/managed/octagon.json << EOF
{
  "SecondaryGoogleAccountSigninAllowed": true,
  "URLBlocklist": [],
  "SystemFeaturesDisableList": [],
  "EditBookmarksEnabled": true,
  "ChromeOsMultiProfileUserBehavior": "unrestricted",
  "DeveloperToolsAvailability": 1,
  "QuickUnlockModeAllowlist": ["all"],
  "DefaultPopupsSetting": 1,
  "AllowDeletingBrowserHistory": true,
  "AllowDinosaurEasterEgg": true,
  "IncognitoModeAvailability": 0,
  "AllowScreenLock": true,
  "ExtensionAllowedTypes": null,
  "ExtensionInstallAllowlist": null,
  "ExtensionInstallBlocklist": null,
  "ExtensionInstallForcelist": [$EXTENSION_LIST],
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
  "DeviceAllowNewUser": 3
}
EOF

cat << SUCCESS

[✓] Policies configured successfully!

Extensions force-installed:
$EXT_LIST

User policies modified successfully!

Done! Policies have been applied.
Visit chrome://policy and reload your policies

SUCCESS
