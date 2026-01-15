![Polygon Banner](./polygon_banner.svg)
# Polygon-Policy-Editor

Welcome to Polygon Policy Editor!
Polygon Policy Editor is my own recreation of Pollen Policy Editor & Pentagon Policy Editor, except unlike Pollen, Polygon won't remove extensions such as GoGuardian, but rather add them as force-installed extensions. You can always add your own force installed extensions to the script if you need to, or remove them!


**Executing Polygon for temporary use:**

Step 1: Make sure you are in Developer Mode

Step 2: Enter the VT2 Shell (Control + ALT + F2)

Step 3: Login as root

Step 4: Execute the Polygon Policy Editor Command:

```
curl -Ls https://raw.githubusercontent.com/NonagonWorkshop/Polygon-Policy-Editor/refs/heads/main/polygon_policy.sh | bash
```

NOTE: This is only temporary and the Policy Editor will go away on your next Restart / Reboot (sudo reboot)! 
If you want to make it permanent please proceed the the next set of instructions.

Executing Polygon for permanent use:

Step 1: Make sure you are in Developer Mode

Step 2: Enter the VT2 Shell (Control + ALT + F2)

Step 3: Login is as root

Step 4: Execute the Polygon RootFS Command:

```
curl -Ls https://raw.githubusercontent.com/NonagonWorkshop/Polygon-Policy-Editor/refs/heads/main/polygon_rootfs.sh | bash
```

Once the PolygonRootFS script is executed successfully, reboot your computer (sudo reboot), then head back to the VT2 Shell and execute the Polygon Policy Editor Command.

If you already have RootFS Disabled, then you are not required to run the Polygon RootFS Disabler.

>[!Warning]
 
 **WE ARE NOT RESPONSIBLE FOR ANY DAMAGES OR ISSUES THIS CAUSES TO YOUR DEVICE, NOR IS MERCURYWORKSHOP.**
