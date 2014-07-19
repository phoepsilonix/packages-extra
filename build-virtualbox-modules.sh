#!/bin/bash
rm -Rf */*virtualbox-modules/{src,pkg}
cd linux38*/*virtualbox-modules
makepkg --sign -df
#cd ../../linux39*/*virtualbox-modules
#makepkg --sign -df
cd ../../linux310*/*virtualbox-modules
makepkg --sign -df
cd ../../linux311*/*virtualbox-modules
makepkg --sign -df
cd ../../linux312*/*virtualbox-modules
makepkg --sign -df
cd ../../linux313*/*virtualbox-modules
makepkg --sign -df
cd ../../linux314*/*virtualbox-modules
makepkg --sign -df
cd ../../linux315*/*virtualbox-modules
makepkg --sign -df
cd ../../linux316*/*virtualbox-modules
makepkg --sign -df
