#!/bin/bash
rm -Rf */*spl_zfs/{src,pkg}
cd linux316*/*spl_zfs
makepkg -df
cd ../../linux318*/*spl_zfs
makepkg -df
cd ../../linux41-*/*spl_zfs
makepkg -df
cd ../../linux44*/*spl_zfs
makepkg -df
cd ../../linux49*/*spl_zfs
makepkg -df
cd ../../linux412*/*spl_zfs
makepkg -df
cd ../../linux413*/*spl_zfs
makepkg -df
cd ../../linux414*/*spl_zfs
makepkg -df
