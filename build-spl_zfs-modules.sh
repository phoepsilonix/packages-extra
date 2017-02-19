#!/bin/bash
rm -Rf */*spl_zfs/{src,pkg}
cd linux310*/*spl_zfs
makepkg -df
cd ../../linux312*/*spl_zfs
makepkg -df
cd ../../linux316*/*spl_zfs
makepkg -df
cd ../../linux318*/*spl_zfs
makepkg -df
cd ../../linux41*/*spl_zfs
makepkg -df
#cd ../../linux44*/*spl_zfs
#makepkg -df
cd ../../linux48*/*spl_zfs
makepkg -df
#cd ../../linux49*/*spl_zfs
#makepkg -df
cd ../../linux410*/*spl_zfs
makepkg -df
