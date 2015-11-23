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
cd ../../linux318*/*nvidia*304*
makepkg --sign -df
cd ../../linux319*/*nvidia*304*
makepkg --sign -df
cd ../../linux41*/*nvidia*304*
makepkg --sign -df
cd ../../linux42*/*nvidia*304*
makepkg --sign -df
cd ../../linux43*/*nvidia*304*
makepkg --sign -df
cd ../../linux44*/*nvidia*304*
makepkg --sign -df
