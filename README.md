##Asus Q501LA Hackintosh##
Hello,

My laptop, Asus Q501LA, hackintosh is near 100% stable. Thanks to Maciasl and InsanelyMac (and TonyMacOSx86). Without their help, I would never get my hackintosh 100% stable. 

At this moment, I am redoing the **WHOLE** DSDT and SSDT (I have encountered some bugs). Bare with me. **Check the changelog before you download it!**

This is just educational purposes.

##Table of Content##
- [Changelog](#Changelog)
- [Requirements](#Requirements)
- [Instructions](#Instructions)
- [Kexts](#Kexts)
- [Credit](#Credit)
- [FAQs](#FAQs)

##Changelog##
- Beta 1.0
    - Patched Graphics + Brightness
        - GFXO -> IGPU
        - Haswell Brightness Fix
        - Haswell HD4400/HD4600/HD5000
- Beta 1.1
    - Patched Audio
        - Changed the Layout from 12 to 28.
- Beta 1.4
    - Patched Battery Indicator
        - Asus N55SL/VivoBook
        - Fix Mutex with non-zero symbol
        - Fix PNOT/PPNT
- Beta 1.5
    - Patched Asus FN Keys
        - Asus Fn keys
- Beta 1.6
    - Patched Rename
        - GFXO -> IGPU
- Beta 1.7
	- Removed HDAEnabler.kext
	- Patched IRQ Fix
	- Added Config.plist
	- Fixed Audio
	- 
##Requirements##
- Asus Q501LA ( http://www.amazon.com/Asus-Q501LA-BBI5T03-15-6-Touch-Screen-Laptop/dp/B00FRSXJKI ) 
- MaciASL ( http://sourceforge.net/projects/maciasl/files/ )
- Running 10.9.3 (Mavericks)

##Instructions##
This DSDT and SSDT only works in **Asus Q501LA**. This will **not work** on other laptop, there is a chance that it can mess up your hardware.

**How to open EFI parition:**
 1. open your terminal and type in

    `mkdir /Volumes/efi`
    
    `sudo mount -t msdos /dev/disk0s1 /Volumes/efi`

 2. Then type in your password, there, you got EFI mounted on your laptop, and ready to use.


**Place DSDT and SSDT to Clover**
 1. Place DSDT and SSDT in

    `cd /Volumes/efi/EFI/CLOVER/ACPI/patched/`
 
 2. After that, place config.plist in

    `cd /Volumes/efi/EFI/CLOVER/`
    
Before you reboot, you will need to install certain `kexts`, so your laptop can run close to 100%.

##Kexts##
There are about 11 kexts that you will need to install. I do not recommend using Multibeast to install your kexts. I would install individual. 

In `kexts` folder, you find:
- ACPIBacklight.kext
- ACPIBatteryManager.kext
- ApplePS2ElanTouchpad.kext
- AsusNBFNKeys.kext
- EAPDFix.kext
- FakeSMC.kext
- GenericUSBXHCI.kext
- RealtekRTL8111.kext
- AppleHDA.kext

I recommend you install both AppleHDA and EAPDFix directly into `/System/Library/Extensions/`. And the rest goes to `/Volumes/efi/EFI/CLOVER/kexts/Other/`. Then fix permissions (using kext utility).

Then reboot, you should have close to 100% stable hackintosh.

##Credit##
I wanted to say thanks to
- Creator of MaciASL
- Creatof of BootLoader
- InsanelyMac Forum
- TonyMacOSx86 Forum
- Rehabman Repo

Without you guys, I will never get stable hackintosh.

##FAQs##
**I cannot boot to Mac... now what?**
- Boot to Clover --> Options --> Arguments --> `-x DSDT=no DropSSDT=Yes`. Then you should able to boot into mac and either fix (in terms of patch) or remove DSDT and SSDT from ``cd /Volumes/efi/EFI/CLOVER/ACPI/patched/`.

**I got kernel panic bro. What should I do now?**
- It is most likey has to do with your kexts. If you have Voodoo or anything related to Voodoo, just remove that and fix permissions using kext utility. You do not need Voodoo. 

**How come this does not work?**
- Bare with me, I am trying to get everything to work. 

**Why do I have like 9 SSDTs?**
- Each one represents something (I know some and currently researching each SSDT(s). 
    - SSDT 1, 2, 3 are CPU related.
    - SSDT 4 is ....
    - SSDT 5 is Graphics related.
    - SSDT 6, 7, 8, 9 are ....
