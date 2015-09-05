#!/bin/bash
rm -Rf */*broadcom-wl/{src,pkg}
cd linux310*/*broadcom-wl
makepkg --sign -df
cd ../../linux312*/*broadcom-wl
makepkg --sign -df
cd ../../linux313*/*broadcom-wl
makepkg --sign -df
cd ../../linux314*/*broadcom-wl
makepkg --sign -df
cd ../../linux316*/*broadcom-wl
makepkg --sign -df
cd ../../linux318*/*broadcom-wl
makepkg --sign -df
cd ../../linux319*/*broadcom-wl
makepkg --sign -df
cd ../../linux41*/*broadcom-wl
makepkg --sign -df
cd ../../linux42*/*broadcom-wl
makepkg --sign -df
