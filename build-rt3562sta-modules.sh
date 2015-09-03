#!/bin/bash
rm -Rf */*rt3562sta/{src,pkg}
cd linux310*/*rt3562sta
makepkg --sign -df
cd ../../linux312*/*rt3562sta
makepkg --sign -df
cd ../../linux313*/*rt3562sta
makepkg --sign -df
cd ../../linux314*/*rt3562sta
makepkg --sign -df
cd ../../linux316*/*rt3562sta
makepkg --sign -df
cd ../../linux318*/*rt3562sta
makepkg --sign -df
cd ../../linux319*/*rt3562sta
makepkg --sign -df
cd ../../linux40*/*rt3562sta
makepkg --sign -df
cd ../../linux41*/*rt3562sta
makepkg --sign -df
cd ../../linux42*/*rt3562sta
makepkg --sign -df
