##Asus Q501LA Hackintosh##
Hello,

Sorry for not updating repository for Yosemite, however big thanks to [USER]. I have updated this repository for El Capitan. This laptop, Asus Q501LA, is near 100% stable. There are some issues, see the **issues** section. This is just for educational purposes and do it in your own risk! Once again, this only works with **Asus Q501LA**. 

How to install Maverick/Yosemite on Asus Q501LA:
https://github.com/RanbirAulakh/Asus-Q501LA-Hackintosh/wiki and additional reading for Yosmite:
https://github.com/gvkt/Asus-Q501LA-Hackintosh/wiki

How to install El Capitan on Asus Q501LA:
https://github.com/RanbirAulakh/Asus-Q501LA-Hackintosh/wiki/Install-El-Capitan-on-Asus-Q501LA

PS: You are free to fork this and improve anything, if there is an improvement, I will accept changes!

##Table of Content##
* [Issues](#Issues)
* [Changelog](#Changelog)
* [Requirements](#Requirements)
* [Instructions](#Instructions)
* [Kexts](#Kexts)
* [Credit](#Credit)
* [FAQs](#FAQs)

# <a name="Issues"></a> Issues
- SD Card Reader (not tested!)
- Wake from Sleep (shuts down when trying to wake the laptop)
- Doesn't fully shutdown (50% of the time)

# <a name="Changelog"></a> Changelog
- Updated for El Capitan

# <a name="Requirements"></a> Requirements
- Asus Q501LA ( http://www.amazon.com/Asus-Q501LA-BBI5T03-15-6-Touch-Screen-Laptop/dp/B00FRSXJKI ) 
- MaciASL ( http://sourceforge.net/projects/maciasl/files/ ) --> If you want to modify some .aml files
- MAC OSX distro, use AppStore. Please avoid 3rd-party distro(s)!

# <a name="Instructions"></a> Instructions
This DSDT and SSDT only works in **Asus Q501LA**. This will **not work** on other laptop.

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
- IntelBacklight.kext
- ACPIBatteryManager.kext
- ApplePS2SmartTouchPad.kext
- AsusNBFNKeys.kext
- CodecCommander.kext
- FakeSMC.kext
- GenericUSBXHCI.kext
- RealtekRTL8111.kext
- AppleHDA.kext

I recommend you install `AppleHDA`, `CodecCommander`, `FakePCIID_HD4600_HD4400`, `FakePCIID`, `ApplePS2SmartTouchPad` and `GenericUSBXHCI` directly into `/System/Library/Extensions/`. And the rest goes to `/Volumes/efi/EFI/CLOVER/kexts/Other/`. Then fix permissions (using kext utility).

Then reboot, you should have close to 100% stable hackintosh.

# <a name="Credit"></a> Credit
- InsanelyMac, TonyOSx86, MaciASL
- Rehabman & his repo
- conradolpz - for sleep and changes in BIOs
- [gvkt](https://github.com/gvkt/) - updated my repository for Yosemite

# <a name="FAQs"></a> FAQs
**I got kernel panic. What should I do?**
- It is most likey has to do with bad kexts you have installed. If you have Voodoo or anything related to Voodoo, just remove that and fix permissions using kext utility, boot in **safe mode** to remove voodoo kexts.

**What each SSDTs represent?**
- SSDT 1, 2, 7, 8, 9 are CPU related.
- SSDT 3 is Unknown.
- SSDT 4 is Sata/Hard Drive releated.
- SSDT 5 is Graphics related.
- SSDT 6 is Sleep/_WAK related.

**What to do if you found an issue or bug?**
- Login your github account and go to my project and report an issue. Then I will look over your issue.
