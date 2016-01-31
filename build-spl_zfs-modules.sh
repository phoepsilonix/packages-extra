#!/bin/bash
rm -Rf */*spl_zfs/{src,pkg}
cd linux310*/*spl_zfs
makepkg --sign -df
cd ../../linux312*/*spl_zfs
makepkg --sign -df
cd ../../linux313*/*spl_zfs
makepkg --sign -df
cd ../../linux314*/*spl_zfs
makepkg --sign -df
cd ../../linux316*/*spl_zfs
makepkg --sign -df
cd ../../linux318*/*spl_zfs
makepkg --sign -df
cd ../../linux319*/*spl_zfs
makepkg --sign -df
cd ../../linux41*/*spl_zfs
makepkg --sign -df
cd ../../linux42*/*spl_zfs
makepkg --sign -df
cd ../../linux43*/*spl_zfs
makepkg --sign -df
cd ../../linux44*/*spl_zfs
makepkg --sign -df
cd ../../linux45*/*spl_zfs
makepkg --sign -df
