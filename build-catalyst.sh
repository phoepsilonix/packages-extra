#!/bin/bash
rm -Rf */*catalyst/{src,pkg}
cd linux34*/*catalyst
makepkg --sign -df
cd ../../linux38*/*catalyst
makepkg --sign -df
#cd ../../linux39*/*catalyst
#makepkg --sign -df
cd ../../linux310*/*catalyst
makepkg --sign -df
cd ../../linux311*/*catalyst
makepkg --sign -df
cd ../../linux312*/*catalyst
makepkg --sign -df
cd ../../linux313*/*catalyst
makepkg --sign -df
cd ../../linux314*/*catalyst
makepkg --sign -df
