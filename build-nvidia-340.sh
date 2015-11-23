#!/bin/bash
rm -Rf */*nvidia*340*/{src,pkg}
cd linux310*/*nvidia*340*
makepkg --sign -df
cd ../../linux312*/*nvidia*340*
makepkg --sign -df
cd ../../linux313*/*nvidia*340*
makepkg --sign -df
cd ../../linux314*/*nvidia*340*
makepkg --sign -df
cd ../../linux316*/*nvidia*340*
makepkg --sign -df
cd ../../linux318*/*nvidia*340*
makepkg --sign -df
cd ../../linux319*/*nvidia*340*
makepkg --sign -df
cd ../../linux41*/*nvidia*340*
makepkg --sign -df
cd ../../linux42*/*nvidia*340*
makepkg --sign -df
cd ../../linux43*/*nvidia*340*
makepkg --sign -df
cd ../../linux44*/*nvidia*340*
makepkg --sign -df
