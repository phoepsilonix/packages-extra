#!/bin/bash
rm -Rf */*vm-tools-modules/{src,pkg}
cd linux38*/*vm-tools-modules
makepkg --sign -df
#cd ../../linux39*/*vm-tools-modules
#makepkg --sign -df
cd ../../linux310*/*vm-tools-modules
makepkg --sign -df
cd ../../linux311*/*vm-tools-modules
makepkg --sign -df
cd ../../linux312*/*vm-tools-modules
makepkg --sign -df
cd ../../linux313*/*vm-tools-modules
makepkg --sign -df
cd ../../linux314*/*vm-tools-modules
makepkg --sign -df
cd ../../linux315*/*vm-tools-modules
makepkg --sign -df
cd ../../linux316*/*vm-tools-modules
makepkg --sign -df
