#!/bin/bash

iasl -da -dl -fe refs.txt $PWD/EFI/CLOVER/ACPI/origin/DSDT.aml $PWD/EFI/CLOVER/ACPI/origin/SSDT*.aml
mv $PWD/EFI/CLOVER/ACPI/origin/*.dsl $PWD/dsl/
