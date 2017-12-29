#!/bin/bash

curl -o ~/ssdtPRGen.sh https://raw.githubusercontent.com/Piker-Alpha/ssdtPRGen.sh/master/ssdtPRGen.sh
chmod +x ~/ssdtPRGen.sh
bash ~/ssdtPRGen.sh
cp ~/Library/ssdtPRGen/ssdt.aml $PWD/EFI/Clover/ACPI/patched/SSDT.aml
