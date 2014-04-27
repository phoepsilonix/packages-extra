#!/bin/bash
rm -Rf */*rt3562sta/{src,pkg}
cd linux34*/*rt3562sta
makepkg --sign -df
cd ../../linux38*/*rt3562sta
makepkg --sign -df
#cd ../../linux39*/*rt3562sta
#makepkg --sign -df
cd ../../linux310*/*rt3562sta
makepkg --sign -df
cd ../../linux311*/*rt3562sta
makepkg --sign -df
cd ../../linux312*/*rt3562sta
makepkg --sign -df
cd ../../linux313*/*rt3562sta
makepkg --sign -df
cd ../../linux314*/*rt3562sta
makepkg --sign -df
