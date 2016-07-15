#!/bin/bash
rm -Rf */*acpi_call/{src,pkg}
cd linux38*/*acpi_call
makepkg -df
#cd ../../linux39*/*acpi_call
#makepkg -df
cd ../../linux310*/*acpi_call
makepkg -df
cd ../../linux311*/*acpi_call
makepkg -df
cd ../../linux312*/*acpi_call
makepkg -df
cd ../../linux313*/*acpi_call
makepkg -df
cd ../../linux314*/*acpi_call
makepkg -df
cd ../../linux315*/*acpi_call
makepkg -df
cd ../../linux316*/*acpi_call
makepkg -df
