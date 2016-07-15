#!/bin/bash
rm -Rf */*vhba-module/{src,pkg}
cd linux38*/*vhba-module
makepkg -df
#cd ../../linux39*/*vhba-module
#makepkg -df
cd ../../linux310*/*vhba-module
makepkg -df
cd ../../linux311*/*vhba-module
makepkg -df
cd ../../linux312*/*vhba-module
makepkg -df
cd ../../linux313*/*vhba-module
makepkg -df
cd ../../linux314*/*vhba-module
makepkg -df
cd ../../linux315*/*vhba-module
makepkg -df
cd ../../linux316*/*vhba-module
makepkg -df
