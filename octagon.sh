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
  0  0 0      T   A  A G     0  0  N NN N
  0  0 0      T   AAAA G GGG 0  0  N  NNN
  0  0 0      T   A  A G   G 0  0  N   NN
   000  000   T   A  A  GGG   000  N    N

          POLICY EDITOR

Heavily based off of:
   Pollen Policy Editor
    https://github.com/MercuryWorkshop/Pollen/
   Pentagon Policy Editor
    https://github.com/NonagonWorkshop/Pentagon-Policy-Editor/

Made by GamerRyker and StarkMist111960
Combines the best of Polygon and Pentagon

 Default force-installed extensions: (GoGuardian, GoGuardian License, Snap&Read, CoWriter, Read&Write)

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
  "EditBookmarksEnabled": true,
  "ChromeOsMultiProfileUserBehavior": "unrestricted",
  "DeveloperToolsAvailability": 1,
  "QuickUnlockModeAllowlist": ["all"],
  "OsColorMode": ["dark"],
  "DefaultPopupsSetting": 1,
  "AllowDeletingBrowserHistory": true,
  "AllowDinosaurEasterEgg": true,
  "IncognitoModeAvailability": 0,
  "AllowScreenLock": true,
  "ExtensionAllowedTypes": null,
  "ExtensionInstallAllowlist": [
  "agiednhnlghobdgpgfdnbdaflnngmoij",
  "agpmgihmmmfkbhckmciedmhincdggomo",
  "annfbnbieaamhaimclajlajpijgkdblo",
  "bebmphofpgkhclocdbgomhnjcpelbenh",
  "bgbbjohpdmpalhmje
