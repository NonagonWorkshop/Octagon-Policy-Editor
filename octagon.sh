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
  "bgbbjohpdmpalhmjeomfhepgomagjmfm",
  "bhdheahnajobgndecdbggfmcojekgdko",
  "bijihlabcfdnabacffofojgmehjdielb",
  "cdnapgfjopgaggbmfgbiinmmbdcglnam",
  "cmpfdiladkiddjmadogdniihoikmjako",
  "dhdgffkkebhmkfjojejmpbldmpobfkfo",
  "dnloadmamaeibnaadmfdfelflmmnbajd",
  "ecnphlgnajanjnkcmbpancdjoidceilk",
  "eimadpbcbfnmbkopoojfekhnkhdbieeh",
  "elmgohdonjdampbcgefphnlchgocpaij",
  "epbobagokhieoonfplomdklollconnkl",
  "fbeffbjdlemaoicjdapfpikkikjoneco",
  "fdfcjfoifbjplmificlkdfneafllkgmn",
  "fikijclmnnepcpijbljojpdaepikaicm",
  "fmidkjgknpkbmninbmklhcgaalfalbdh",
  "fogjeanjfbiombghnmkmmophfeccjdki",
  "fpfpcficbjpanlhdcjmkhopnbafbmpfa",
  "gcflfnendjincoakmpkdgkocaoojjnbc",
  "gdicnpbaekbefjanokchpfhnaphfnphl",
  "gdiimmpmdoofmahingpgabiikimjgcia",
  "ghbmnnjooekpmoecnnnilnnbdlolhkhi",
  "gilnapfdconbpkkigjdedkcilaalfnjb",
  "gkmfklmmoioijpjndhdhogcefdbfcfho",
  "haldlgldplgnggkjaafhelgiaglafanh",
  "hddnkoipeenegfoeaoibdmnaalmgkpip",
  "hfhhnacclhffhdffklopdkcgdhifgngh",
  "hhcgnlnhaapiekdelngjichnccjfkbnc",
  "hkckninmhigheelfhldjnlidcdeamogk",
  "hmffdimoneaieldiddcmajhbjijmnggi",
  "icdipabjmbhpdkjaihfjoikhjjeneebd",
  "ieadfjdkjpnoafofpolljfnejbgppgad",
  "ijagefbeogciolnheepglhkbflpaalff",
  "inoeonmfapjbbkmdafoankkfajkcphgd",
  "ioimlbgefgadofblnajllknopjboejda",
  "jaembmdeobjibglbnnefpalabeohjpnj",
  "jjfeehgdeghiknkilcildnjofkcndjcm",
  "jmmkbcfakiendpnceenfanaebjenjene",
  "kfokdmfpdnokpmpbjhjbcabgligoelgp",
  "kkmlkkjojmombglmlpbpapmhcaljjkde",
  "knibbpmgfkaginjkddpmmpcnknegecok",
  "lajkcaalkdbnkbaljaldmoahhfjlbgad",
  "lgjhepbpjcmfmjlpkkdjlbgomamkgonb",
  "ljflmlehinmoeknoonhibbjpldiijjmm",
  "lkhfeoafdgbaecajkdbioenncjopbpmk",
  "mafbdhjdkjnoafhfelkjpchpaepjknad",
  "mccjpebhdcgelkllbolpacfdklmljnkd",
  "mkaakpdehdafacodkgkpghoibnmamcme",
  "mmeijimgabbpbgpdklnllpncmdofkcpn",
  "mmfbcljfglbokpmkimbfghdkjmjhdgbg",
  "neibhohkbmfjninidnaoacabkjonbahn",
  "nmigaijibiabddkkmjhlehchpmgbokfj",
  "okgjbfikepgflmlelgfgecmgjnmnmnnb",
  "paijmjmfnjcbjlimjeminlepannmimbi"
],

  "ExtensionInstallBlocklist": null,
  "ExtensionInstallForcelist": [
  "bhdheahnajobgndecdbggfmcojekgdko;https://clients2.google.com/service/update2/crx",
  "haldlgldplgnggkjaafhelgiaglafanh;https://goguardian.com/ext/m.xml",
  "inoeonmfapjbbkmdafoankkfajkcphgd;https://clients2.google.com/service/update2/crx",
  "jjfeehgdeghiknkilcildnjofkcndjcm;https://goguardian.com/licenses/update.php"
],

  "ExtensionSettings": null,
  "ChromeOsLockOnIdleSuspend": false,
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

  "VirtualMachinesAllowed": true,
  "CrostiniAllowed": true,
  "VmManagementCliAllowed": true,
  "UserBorealisAllowed": true,

  "DefaultCookiesSetting": 1,
  "WifiSyncAndroidAllowed": true,
  "DeveloperToolsDisabled": false,
  "NearbyShareAllowed": true,
  "InstantTetheringAllowed": true,
  "PrintingEnabled": true,
  "SmartLockSigninAllowed": true,
  "PhoneHubAllowed": true,
  "LacrosAvailability": "user_choice",
  "LacrosSelection": 'user_choice",
  "BrowserGuestModeEnabled": true,
  "WallpaperImage": null,

  "ArcEnabled": true,
  "ArcPolicy": {
    "applications": [],
    "playStoreMode": "ENABLED",
    "availableAppSetPolicy": "ALL",
    "playLocalPolicyEnabled": true,
    "statusReportingSettings": {
      "applicationReportsEnabled": true,
      "softwareInfoEnabled": true
    }
  },

  "DeviceAutoUpdateTimeRestrictions": [],
  "DnsOverHttpsMode": "automatic",
  "BrowserLabsEnabled": true,
  "SafeSitesFilterBehavior": 0,
  "SafeBrowsingProtectionLevel": 0,
  "DownloadRestrictions": 0,
  "ProxyMode": "system",
  "ProxyServerMode": "system",
  "NetworkThrottlingEnabled": false,
  "NetworkPredictionOptions": 0,
  "AllowedDomainsForApps": "",
  "SystemFeaturesDisableList": [],
  "ReportAppInventory": [],
  "ReportAppUsage": [],

  "AssistantOnboardingMode": "default",

  "ManagedBookmarks": [
    { "toplevel_name": "Staff Bookmarks" },

    { "name": "Adobe Creative Cloud", "url": "http://creativecloud.adobe.com/" },
    { "name": "Clubs Directory", "url": "https://docs.google.com/spreadsheets/d/1yxpG3s5IpSAiXJEAiQzeQhd8TOj-N6Y6pI4E9GwxTqA/edit?gid=0#gid=0" },
    { "name": "Explore Academy website", "url": "https://explore.academy/abq" },
    { "name": "Google Classroom", "url": "https://classroom.google.com" },
    { "name": "Google Play Books", "url": "https://play.google.com/books" },
    { "name": "Hall Pass Request", "url": "https://hallpass.goguardian.com/home" },
    { "name": "PowerSchool", "url": "https://exploreacademy.powerschool.com/guardian/home.html?_userTypeHint=student" },
    { "name": "Screen Recorder", "url": "https://toolbox.googleapps.com/apps/screen_recorder/" },
    { "name": "StopIt", "url": "https://web.stopitsolutions.com/login/" },
    { "name": "Student Council Suggestions", "url": "https://docs.google.com/forms/d/1_cfUrJTXnLMAIzd3qc_Bx3NT7o2Hxd2gznVzl53qJUs/viewform?edit_requested=true" },
    { "name": "Tech Support", "url": "https://docs.google.com/forms/d/e/1FAIpQLSdej7X29EGgJ3f7QNq5RJ7VNpmPHiYWesF-p4fW-6CVAxNWnA/viewform" },
    { "name": "TI-84 Graphing Calculator Emulator", "url": "https://docs.google.com/document/d/1Ot1vD_jx12ccGAfnS1lNaYeIUUlv1abojGiIVU3-EP8/edit?usp=sharing" },
    { "name": "Pear Assessment", "url": "https://assessment.peardeck.com/login" },

    { "name": "Staff Dashboard", "url": "https://docs.google.com/spreadsheets/d/e/2PACX-1vQRpwbH6MNfmQw_dRK1Adn8Iw8jE6gFE0MdGIOx-fD0nFVSC-iwzLPrDwr5qpqsui1bVcOX_V8tjIYB/pubhtml?gid=0&single=true" },
    { "name": "Discipline Referral Form", "url": "https://docs.google.com/forms/d/e/1FAIpQLSeA7r4dZyVDp6mElxOPd9uPwR5pDTIqsd5GgYE4Mwk-idBEsQ/viewform" },
    { "name": "Staff Directory", "url": "https://docs.google.com/document/d/1H6JasuBmIukLIhT7i8cs63lRrUXQ9zSH-LDvnAG2bno/edit?usp=sharing" },
    { "name": "Staff Handbook", "url": "https://docs.google.com/document/d/1QRJx3F48m9t9Sbm6sL9ZNQCRf2AARe5oHRKA1YsXVKw/edit?usp=sharing" },
    { "name": "Missing Assignment Report", "url": "https://docs.google.com/forms/d/e/1FAIpQLSfAt29Glo0aNzgAjNlaMdTHVD5wd3j44uD3oDy785Q6yCXE-g/viewform" },
    { "name": "Pre-Referral Interventions", "url": "https://docs.google.com/document/d/1vh0x6FhqgaZ8htR1PU1PNpia6-Hx-4zO/edit?usp=sharing" },
    { "name": "GoGuardian Teacher", "url": "https://teacher.goguardian.com/classrooms/active" },
    { "name": "26-27 Staff Leave Request Form", "url": "https://docs.google.com/forms/d/1GCsj4YOLXx-eNQXdemsoArwLUVqjeWSZWc61wePvr3U/viewform" },
    { "name": "2026-2027 Staff Calendar", "url": "https://docs.google.com/spreadsheets/d/18xtNopP5fnUNZLRPaay2gFN69CvxD6GWG57ZovQ6r9s/edit?usp=sharing" }
  ]
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
