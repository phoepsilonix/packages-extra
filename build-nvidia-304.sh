#!/bin/bash
rm -Rf */*nvidia*304*/{src,pkg}
cd linux310*/*nvidia*304*
makepkg --sign -df
cd ../../linux312*/*nvidia*304*
makepkg --sign -df
cd ../../linux313*/*nvidia*304*
makepkg --sign -df
cd ../../linux314*/*nvidia*304*
makepkg --sign -df
cd ../../linux316*/*nvidia*304*
makepkg --sign -df
cd ../../linux317*/*nvidia*304*
makepkg --sign -df
