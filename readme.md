
# Octagon Policy Editor

Welcome to Octagon Policy Editor!
Octagon Policy Editor is a recreation of Pollen, Pentagon, and Polygon. This allows you to force install extensions to your liking, and if you are doing this to modify account policies, like on a school account, you can keep gogaurdian. 


**Using Octagon for temporary use:**

Step 1: Make sure you are in Developer Mode

Step 2: Enter the VT2 Shell (Control + ALT + F2)

Step 3: Login as root

Step 4: Execute the Octagon Policy Editor Command:

```
curl -Ls https://raw.githubusercontent.com/NonagonWorkshop/Octagon-Policy-Editor/main/octagon.sh | bash
```

NOTE: This is only temporary and the Policy Editor will go away on your next Restart / Reboot (sudo reboot)! 
If you want to make it permanent please proceed the the next set of instructions.

Executing Octagon for permanent use:

Step 1: Make sure you are in Developer Mode

Step 2: Enter the VT2 Shell (Control + ALT + F2)

Step 3: Login is as root

Step 4: Execute the Octagon RootFS Command:

```
curl -Ls https://raw.githubusercontent.com/NonagonWorkshop/Octagon-Policy-Editor/main/rootfs.sh | bash
```

Some octagon set policies are being superseded by other policies and are changing the ones octagon updated to the normal default-enterprise enforced ones. What do I do?

Simple, this is known as a policy push cycle, and it is easily fixable:

The policy push cycle basically creates a new policy json file usually called policy.json after octagon.json is created. This policy.json file has some updated policies due to octagon, and the rest are default enterprise-enforced ones that supersede and update octagon updated policies with default enterprise ones as I said.

In-order to fix this please follow these steps:

**First**, remove all policy json files, that includes octagon.json:

```
sudo rm -rf /etc/opt/chrome/policies/managed/octagon.json
```

```
sudo rm -rf /etc/opt/chrome/policies/managed/policy.json
```

**Second**, re-run the octagon policy editor command.

**Lastly**, once you finish executing the octagon policy editor command, run the following command:

```
sudo chattr +i /etc/opt/chrome/policies/managed/
```

If you run that command before running the octagon policy editor command, octagon won't be able to write it's own policy json file.


If you want to do it permanantly, if RootFS verification is not yet disabled, use the RootFS script, reboot, and then run Octagon.sh.

Made by: GamerRyker & StarkMist111960

>[!Warning]
>**WE ARE NOT RESPONSIBLE FOR ANY DAMAGES OR ISSUES THIS CAUSES TO YOUR DEVICE, NOR IS MERCURYWORKSHOP.**


This is to my friend who took everything from Octagon, and so called "Updated" it, to have no "AI Slop". If you seriously think grammar and using a bunch of echos means you used AI, then you should really consider taking some coding classes. For anyone wanting to check out the "No AI Slop" version, go ahead and look at the commits: All that was really "Updated" were the echos and what he thinks is "grammar". (All he really did was change "based off of" to "based on"..

Stark here, I'm not one to back down from a fight, so I won't I do not believe that GamerRyker used AI whilst coding this. I believe, wholeheartedly that GamerRyker coded this alone, before I came along of course. Octagon is my second favorite personal creation based upon Pollen Policy Editor, second only to Pentagon, which has extremly similar formatting to Octagon and very similar grammar, yet I was not accussed of using AI. I will not believe that GamerRyker used AI to create this until I have genuine, concrete evidence (photo, video, etc).
