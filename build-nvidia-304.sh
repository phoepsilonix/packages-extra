#!/bin/bash
rm -Rf */*nvidia*304*/{src,pkg}
cd linux38*/*nvidia*304*
makepkg --sign -df
#cd ../../linux39*/*nvidia*304*
#makepkg --sign -df
cd ../../linux310*/*nvidia*304*
makepkg --sign -df
cd ../../linux311*/*nvidia*304*
makepkg --sign -df
cd ../../linux312*/*nvidia*304*
makepkg --sign -df
cd ../../linux313*/*nvidia*304*
makepkg --sign -df
cd ../../linux314*/*nvidia*304*
makepkg --sign -df
cd ../../linux315*/*nvidia*304*
makepkg --sign -df
cd ../../linux316*/*nvidia*304*
makepkg --sign -df
