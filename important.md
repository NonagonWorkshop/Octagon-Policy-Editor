UPDATE: (Policies) 
Please note that some policies may not be added to the json list in the Octagon.sh file. 
SecondaryAccountUseEnabled was just added to the list. 
By default, if you use a Policy Editor and the creator forgets to add a policy such as the mentioned policy above, the policy will be set to what it's set to by default by your School Admin. 
Meaning if SecondaryAccountUseEnabled is set to false by default, and that Policy isn't added to the Policy Editor it will stay as false, and if you try to use Nano, VIM, or sudo sed to enable it or set it to true and or false, it will enable or disable the policy, but it will create a conflicting value which is hard to look at.
(It won't really cause any harm) it's just annoying as hell to look at.

If you notice a specific Policy that is not added to the json list on the Octagon.sh file please let me know and i will add it to the list. Please also specify if it's a policy that should be set to true / enabled or false / disabled.

UPDATE: Use of (RootFS)
The Octagon RootFS Disabler will execute a command that should disable RootFS on both partitions 2 & 4, if it fails to do so, and gives an error about you needing "Developer Firmware", and or wants you to confirm you want to disable RootFS by executing the same command with an extra line, please execute the following commands:

Step 1: Remount Root as Read/Write

```
sudo mount -o remount,rw /
```

Step 2: Execute the following RootFS disabling commands:

```
sudo /usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification --partitions 2 --force
```

```
sudo /usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification --partitions 4 --force
```

If you get an error when attempting to execute the command that remounts root as Read/Write, please execute the following command, then proceed to step 1:

```
e2fsck -f /dev/mmcblk1p5
```
The current directory in the command above may be different from yours, so please do check to make sure the directory is the same as the one in the command line, if it is not, change the current directory in the command line to yours.
