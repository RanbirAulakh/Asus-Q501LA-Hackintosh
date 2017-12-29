##Asus Q501LA Hackintosh##
Hello,

This repo was inspired by and updated from the original found at:
https://github.com/RanbirAulakh/Asus-Q501LA-Hackintosh

The following configuration is working and tested on macOS Sierra 10.12.6.
Potential Caveats/Unsolved Problems with 10.12: https://www.tonymacx86.com/threads/readme-common-some-unsolved-problems-in-10-12-sierra.202316/ 

Note that this method is completely untested for macOS High Sierra. It is extremely likely High Sierra will have more broken functionality. I can't make any guarantees or support any upgrades to High Sierra.

 This laptop, Asus Q501LA, is near 100% stable. There are some issues, see the **issues** section. This is just for educational purposes and do it in your own risk! Once again, this only works with **Asus Q501LA**. 

First, you must install El Capitan, and set up the proper kexts and ssdt/dsdt's.
After that, Sierra can be installed from the App store once booted.


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
- HDMI/HDMI Audio (Kext is there, but havent tested it yet!)
- Wake from Sleep (shuts down when trying to wake the laptop)
    - Don't know if this will ever work, none of the BIOS tested (204-212) change anything
- Doesn't fully shutdown (50% of the time)

# <a name="Changelog"></a> Changelog
- Updated for El Capitan
- Updated for Sierra

# <a name="Requirements"></a> Requirements
- Asus Q501LA ( http://www.amazon.com/Asus-Q501LA-BBI5T03-15-6-Touch-Screen-Laptop/dp/B00FRSXJKI ) 
- MaciASL ( http://sourceforge.net/projects/maciasl/files/ ) --> Only needed if you want to modify some .aml files
- MAC OSX distro, use AppStore. Please avoid 3rd-party distro(s)!

# <a name="MacOS Installation/USB Instructions"></a> Instructions
1. Create an El Capitan/Clover bootable USB. The bulk of the instructions can be found on the original repo here:
How to install El Capitan on Asus Q501LA:
https://github.com/RanbirAulakh/Asus-Q501LA-Hackintosh/wiki/Install-El-Capitan-on-Asus-Q501LA but use the kexts and DSDT/SSDT's from my repo!

- Replace the `kexts`, `ACPI/patched` folders with the ones found here.
- Replace the `drivers64UEFI` folder in the original .zip with the ones found in my repo.
- Replace the `config.plist` with the one from my repo.
- SSDT.aml was generated using ssdtPRgen.sh, see https://www.tonymacx86.com/threads/guide-native-power-management-for-laptops.175801/ for more details

Note that I do not provide any links to the El Capitan installer download...however it is out there...somewhere on the interwebs.

# <a name="Postinstallation Instructions"></a> Instructions
**How to setup EFI parition (Must be done on first boot!):**
 1. First, install clover EFI if you haven't already. It should create and mount an EFI partition and copy the necessary clover files.
 https://sourceforge.net/projects/cloverefiboot/
 ![alt text](https://camo.githubusercontent.com/60f4a12121256fb4eae08adff61a70f6e359b6e7/687474703a2f2f6779617a6f2e636f6d2f32643133343031363138623034366636303564663161313032373363353064332e706e67)

 2. Delete all the 10.xx folders on the volume under /EFI/EFI/CLOVER/kexts.

 2. Copy all the SSDT and DSDT aml files from the repo EFI/CLOVER/ACPI/patched folder to the same folder structure in the mounted volume.

 3. Copy the following kext files from the repo EFI/CLOVER/kexts/Other folder:
 - IntelBacklight.kext
 - ACPIBatteryManager.kext
 - AsusNBFNKeys.kext
 - FakeSMC.kext
 - FakePCIID.kext
 - FakePCIID_Intel_HD_Graphics.kext
 - FakePCIID_Intel_HDMI_Audio.kext
 - RealtekRTL8111.kext
 - Lilu.kext
 - IntelGraphicsFixup.kext

 4. Place `config.plist` in `/Volumes/EFI/EFI/CLOVER`, overwriting the stock one from installing Clover.

**Installing kexts to /S/L/E:**
1. Install Kext Wizard: https://www.hackintosh.zone/file/17-kext-wizard/
2. Install `AppleHDA`, `CodecCommander`, `HDAEnabler1.kext` and `ApplePS2SmartTouchPad` directly into `/System/Library/Extensions/` using Kext Wizard. 
3. Fix permissions and rebuild kext cache using Kext Wizard.

**(OPTIONAL) Convert *.dsl to *.aml (Only needed if you are patching beyond using ssdtPRGen.sh)**
Info/Details: https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/
https://www.tonymacx86.com/threads/guide-native-power-management-for-laptops.175801/

I have provided some scripts to automate disassembly, as well as construction of the SSDT.aml file via ssdtPRgen.sh:
- get_iasl.sh
- disassemble_dsdt_ssdt.sh (requires you to first run get_iasl.sh)
- get_ssdt_pr_gen.sh

 1. Open MaciASL and open DSDT and SSDTs
 2. MaciASL -> File -> Save as -> `save as ACPI Machine Language Binary`
 3. Rename `
	- `dsdt.aml` to `DSDT.aml`
	- `ssdt.aml`, `ssdt1.aml`, `ssdt2.aml`,... to `SSDT.aml`, `SSDT-1.aml`, `SSDT-2.aml`, ...
 3. Place DSDT and SSDT .aml files in
    `cd /Volumes/EFI/EFI/CLOVER/ACPI/patched/`

Then reboot, you should have close to 100% stable hackintosh.
Time to upgrade to macOS Sierra.

**Upgrading to macOS Sierra**
1. Download and install Sierra from the App Store. (DO NOT ENABLE FileVault upon reboot) https://itunes.apple.com/us/app/macos-sierra/id1127487414?ls=1&mt=12
2. Reinstall `AppleHDA`, `CodecCommander`, `HDAEnabler1.kext` and `ApplePS2SmartTouchPad` directly into `/System/Library/Extensions/` using Kext Wizard. 
3. Fix permissions and rebuild kext cache using Kext Wizard.
4. Run the disable_hibernate.sh script (may have to chmod +x) to disable hibernate. Hibernation is not supported on hackintosh.

# <a name="Credit"></a> Credit
- InsanelyMac, TonyOSx86, MaciASL
- Rehabman & his repo
- conradolpz - for sleep and changes in BIOs
- [gvkt](https://github.com/gvkt/) - updated original repository for Yosemite
- [RanbirAulakh](https://github.com/RanbirAulakh/) - updated repo to El Capitan

# <a name="FAQs"></a> FAQs
**I got kernel panic. What should I do?**
- It is most likey has to do with bad kexts you have installed. If you have Voodoo or anything related to Voodoo, just remove that and fix permissions using kext wizard, boot in **safe mode** to remove voodoo kexts.

**What each SSDTs represent?**
DSDT/SSDT's were dumped using the Clover F4 method. This was using BIOS 212.

- SSDT 0 is power related.
- SSDT 1, 2 is CPU related.
- SSDT 3 is Sata/Hard Drive releated.
- SSDT 4 is Graphics related.
- SSDT 5 is Sleep/_WAK related.

**What to do if you found an issue or bug?**
- Login your github account and go to my project and report an issue. Then I will look over your issue.
