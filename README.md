##Asus Q501LA Hackintosh##
Hello,

My laptop, Asus Q501LA, hackintosh is near 100% stable.

**Check the changelog before you download it!**

This is just educational purposes.

PS: You are free to fork this and improve anything, if I see there is an improvement, I will accept changes!

##Table of Content##
* [Issues](#Issues)
* [Changelog](#Changelog)
* [Requirements](#Requirements)
* [Instructions](#Instructions)
* [Kexts](#Kexts)
* [Credit](#Credit)
* [FAQs](#FAQs)

# <a name="Issues"></a> Issues
- Sleep
- SD Card Reader (not tested)
- Somethings Shutdown/Restart does not function
- Black Screen when booting to Mac (I think that's how Clover works?)

# <a name="Changelog"></a> Changelog
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
- Beta 2.0
	- Disassembled DSDT and SSDT with latest iasl
	- Remapped FN Keys (Brightness now works)
	- In DSDT, patched the following
		- IRQ Fix
		- SMBUS Fix
		- RTC Fix
		- HPET Fix
		- OS Check Fix
		- Fix _Wak ARg0 v2
- Beta 2.1
	- Shutdown v2

# <a name="Requirements"></a> Requirements
- Asus Q501LA ( http://www.amazon.com/Asus-Q501LA-BBI5T03-15-6-Touch-Screen-Laptop/dp/B00FRSXJKI ) 
- MaciASL ( http://sourceforge.net/projects/maciasl/files/ )
- Running 10.9.3 (Mavericks)

# <a name="Instructions"></a> Instructions
This DSDT and SSDT only works in **Asus Q501LA**. This will **not work** on other laptop, there is a chance that it can mess up your hackintosh, laptop, or hardware.

**How to open EFI parition:**
 1. open your terminal and type in

    `mkdir /Volumes/efi`
    
    `sudo mount -t msdos /dev/disk0s1 /Volumes/efi`

 2. Then type in your password, there, you got EFI mounted on your laptop, and ready to use.

**Convert *.dsl to *.aml**
 1. Open MaciASL and open DSDT and SSDTs
 2. MaciASL -> File -> Save as -> `save as ACPI Machine Language Binary`
 3. Rename `
	- `dsdt.aml` to `DSDT.aml`
	- `ssdt.aml`, `ssdt1.aml`, `ssdt2.aml`,... to `SSDT.aml`, `SSDT-1.aml`, `SSDT-2.aml`, ...

**Place DSDT and SSDT to Clover**
 1. Place DSDT and SSDT in

    `cd /Volumes/efi/EFI/CLOVER/ACPI/patched/`
 
 2. After that, place config.plist in

    `cd /Volumes/efi/EFI/CLOVER/`
    
Before you reboot, you will need to install certain `kexts`, so your laptop can run close to 100%.

# <a name="Kexts"></a> Kexts
There are about 9 kexts that you will need to install. I do not recommend using Multibeast to install your kexts. I would install individual. 

In `kexts` folder, you find:
- ACPIBacklight.kext
- ACPIBatteryManager.kext
- ApplePS2ElanTouchpad.kext
- AsusNBFNKeys.kext
- CodecCommander.kext
- FakeSMC.kext
- GenericUSBXHCI.kext
- RealtekRTL8111.kext
- AppleHDA.kext

I recommend you install both `AppleHDA` and `CodecCommander` directly into `/System/Library/Extensions/`. And the rest goes to `/Volumes/efi/EFI/CLOVER/kexts/Other/`. Then fix permissions (using kext utility).

Then reboot, you should have close to 100% stable hackintosh.

# <a name="Credit"></a> Credit
I wanted to say thanks to
- MaciASL, Bootloader, InsanelyMac, TonyMac0Sx86
- Rehabman Repo (Rehabman was the one who helped me a lot!).

Without you guys, I will never get stable hackintosh.

# <a name="FAQs"></a> FAQs
**I got kernel panic bro. What should I do now?**
- It is most likey has to do with your kexts. If you have Voodoo or anything related to Voodoo, just remove that and fix permissions using kext utility. You do not need Voodoo. Boot it in `Safe Mode`

**Why do I have like 9 SSDTs?**
- Each one represents something (According to Rehabman). 
    - SSDT 1, 2, 7, 8, 9 are CPU related.
    - SSDT 3 is Unknown.
    - SSDT 4 is Sata/Hard Drive releated.
    - SSDT 5 is Graphics related.
    - SSDT 6 is Sleep/_WAK related.

**What to do if I found an issue?**
- Login your github account and go to my project and report an issue. Then I will look over your issue.
