These are the files I extracted from Ubuntu Live-CD. Those files are correctly disassembled. 

**How do I extract my DSDT and SSDT from Ubuntu Live-CD?**
- Run these commands in Terminal (Ubuntu Live-CD)
`cd ~/Desktop`

`sudo apt-get update`

`sudo apt-get install acpidump`

`sudo acpidump > acpidump.out`

`sudo acpixtract -a acpidump.out`

Then you will see like a lot of files created in your desktop. Take those and put it in a folder, then place them in your Hackintosh desktop.

After it got placed. You will need to download iasl (which can disassemble them correctly). 
Download Link: `http://ge.tt/9Vk2wwl1/v/0?c`

I recommend placing iasl in the folder that contains extracted DSDT and SSDT!

Run these commands in Terminal (Hackintosh)

`cd ~/Desktop/[your folder name]`

`./iasl -da *.aml`

If you got an error, make sure you have **ONLY** DSDT and SSDT in that folder, everything else, just delete them.


Below is, I just quickly printed out what is my specific hardware. It can be useful. 

`ubuntu@ubuntu:~$ lspci -nn
00:00.0 Host bridge [0600]: Intel Corporation Haswell-ULT DRAM Controller [8086:0a04] (rev 09)
00:02.0 VGA compatible controller [0300]: Intel Corporation Haswell-ULT Integrated Graphics Controller [8086:0a16] (rev 09)
00:03.0 Audio device [0403]: Intel Corporation Haswell-ULT HD Audio Controller [8086:0a0c] (rev 09)
00:04.0 Signal processing controller [1180]: Intel Corporation Device [8086:0a03] (rev 09)
00:14.0 USB controller [0c03]: Intel Corporation Lynx Point-LP USB xHCI HC [8086:9c31] (rev 04)
00:16.0 Communication controller [0780]: Intel Corporation Lynx Point-LP HECI #0 [8086:9c3a] (rev 04)
00:1b.0 Audio device [0403]: Intel Corporation Lynx Point-LP HD Audio Controller [8086:9c20] (rev 04)
00:1c.0 PCI bridge [0604]: Intel Corporation Lynx Point-LP PCI Express Root Port 1 [8086:9c10] (rev e4)
00:1c.2 PCI bridge [0604]: Intel Corporation Lynx Point-LP PCI Express Root Port 3 [8086:9c14] (rev e4)
00:1c.3 PCI bridge [0604]: Intel Corporation Lynx Point-LP PCI Express Root Port 4 [8086:9c16] (rev e4)
00:1f.0 ISA bridge [0601]: Intel Corporation Lynx Point-LP LPC Controller [8086:9c43] (rev 04)
00:1f.2 SATA controller [0106]: Intel Corporation Lynx Point-LP SATA Controller 1 [AHCI mode] [8086:9c03] (rev 04)
00:1f.3 SMBus [0c05]: Intel Corporation Lynx Point-LP SMBus Controller [8086:9c22] (rev 04)
00:1f.6 Signal processing controller [1180]: Intel Corporation Lynx Point-LP Thermal [8086:9c24] (rev 04)
02:00.0 Ethernet controller [0200]: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller [10ec:8168] (rev 0c)
03:00.0 Network controller [0280]: Qualcomm Atheros AR9285 Wireless Network Adapter (PCI-Express) [168c:002b] (rev 01)`



