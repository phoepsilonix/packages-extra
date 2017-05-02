#!/bin/bash
rm -Rf */*r8168/{src,pkg}
cd linux310*/*r8168
makepkg -df
cd ../../linux312*/*r8168
makepkg -df
cd ../../linux316*/*r8168
makepkg -df
cd ../../linux318*/*r8168
makepkg -df
cd ../../linux41-*/*r8168
makepkg -df
cd ../../linux44*/*r8168
makepkg -df
cd ../../linux48*/*r8168
makepkg -df
cd ../../linux49*/*r8168
makepkg -df
cd ../../linux410*/*r8168
makepkg -df
cd ../../linux411*/*r8168
makepkg -df
