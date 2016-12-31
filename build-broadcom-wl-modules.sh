#!/bin/bash
rm -Rf */*broadcom-wl/{src,pkg}
cd linux310*/*broadcom-wl
makepkg -df
cd ../../linux312*/*broadcom-wl
makepkg -df
#cd ../../linux313*/*broadcom-wl
#makepkg -df
#cd ../../linux314*/*broadcom-wl
#makepkg -df
cd ../../linux316*/*broadcom-wl
makepkg -df
cd ../../linux318*/*broadcom-wl
makepkg -df
#cd ../../linux319*/*broadcom-wl
#makepkg -df
cd ../../linux41*/*broadcom-wl
makepkg -df
cd ../../linux44*/*broadcom-wl
makepkg -df
cd ../../linux48*/*broadcom-wl
makepkg -df
cd ../../linux49*/*broadcom-wl
makepkg -df
cd ../../linux410*/*broadcom-wl
makepkg -df
