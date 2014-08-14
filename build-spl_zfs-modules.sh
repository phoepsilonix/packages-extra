#!/bin/bash
rm -Rf */*spl_zfs/{src,pkg}
cd linux34*/*spl_zfs
makepkg --sign -df
cd ../../linux38*/*spl_zfs
makepkg --sign -df
#cd ../../linux39*/*spl_zfs
#makepkg --sign -df
cd ../../linux310*/*spl_zfs
makepkg --sign -df
cd ../../linux311*/*spl_zfs
makepkg --sign -df
cd ../../linux312*/*spl_zfs
makepkg --sign -df
cd ../../linux313*/*spl_zfs
makepkg --sign -df
cd ../../linux314*/*spl_zfs
makepkg --sign -df
#cd ../../linux315*/*spl_zfs
#makepkg --sign -df
