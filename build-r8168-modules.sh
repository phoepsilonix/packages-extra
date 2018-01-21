#!/bin/bash
rm -Rf */*r8168/{src,pkg}
cd linux316*/*r8168
makepkg -df
cd ../../linux318*/*r8168
makepkg -df
cd ../../linux41-*/*r8168
makepkg -df
cd ../../linux44*/*r8168
makepkg -df
cd ../../linux49*/*r8168
makepkg -df
cd ../../linux412*/*r8168
makepkg -df
cd ../../linux413*/*r8168
makepkg -df
cd ../../linux414*/*r8168
makepkg -df
cd ../../linux415*/*r8168
makepkg -df
