#!/bin/bash
rm -Rf */*catalyst/{src,pkg}
cd linux310*/*catalyst
makepkg --sign -df
cd ../../linux312*/*catalyst
makepkg --sign -df
cd ../../linux313*/*catalyst
makepkg --sign -df
cd ../../linux314*/*catalyst
makepkg --sign -df
cd ../../linux316*/*catalyst
makepkg --sign -df
cd ../../linux318*/*catalyst
makepkg --sign -df
cd ../../linux319*/*catalyst
makepkg --sign -df
