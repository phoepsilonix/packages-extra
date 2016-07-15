#!/bin/bash
rm -Rf */*r8168/{src,pkg}
cd linux310*/*r8168
makepkg -df
cd ../../linux312*/*r8168
makepkg -df
cd ../../linux313*/*r8168
makepkg -df
cd ../../linux314*/*r8168
makepkg -df
cd ../../linux316*/*r8168
makepkg -df
cd ../../linux318*/*r8168
makepkg -df
cd ../../linux319*/*r8168
makepkg -df
cd ../../linux41*/*r8168
makepkg -df
cd ../../linux42*/*r8168
makepkg -df
