#!/bin/bash
rm -Rf */*r8168/{src,pkg}
cd linux310*/*r8168
makepkg --sign -df
cd ../../linux312*/*r8168
makepkg --sign -df
cd ../../linux313*/*r8168
makepkg --sign -df
cd ../../linux314*/*r8168
makepkg --sign -df
cd ../../linux316*/*r8168
makepkg --sign -df
cd ../../linux318*/*r8168
makepkg --sign -df
cd ../../linux319*/*r8168
makepkg --sign -df
cd ../../linux41*/*r8168
makepkg --sign -df
cd ../../linux42*/*r8168
makepkg --sign -df
