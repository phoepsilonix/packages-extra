#!/bin/bash
rm -Rf */*nvidia/{src,pkg}
cd linux316*/*nvidia
makepkg -df
cd ../../linux318*/*nvidia
makepkg -df
cd ../../linux41-*/*nvidia
makepkg -df
cd ../../linux44*/*nvidia
makepkg -df
cd ../../linux49*/*nvidia
makepkg -df
cd ../../linux414*/*nvidia
makepkg -df
cd ../../linux415*/*nvidia
makepkg -df
cd ../../linux416*/*nvidia
makepkg -df
