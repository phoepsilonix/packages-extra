#!/bin/bash
rm -Rf */*catalyst/{src,pkg}
cd linux310*/*catalyst
makepkg -df
cd ../../linux312*/*catalyst
makepkg -df
cd ../../linux313*/*catalyst
makepkg -df
cd ../../linux314*/*catalyst
makepkg -df
cd ../../linux316*/*catalyst
makepkg -df
cd ../../linux318*/*catalyst
makepkg -df
cd ../../linux319*/*catalyst
makepkg -df
cd ../../linux41*/*catalyst
makepkg -df
cd ../../linux42*/*catalyst
makepkg -df
cd ../../linux43*/*catalyst
makepkg -df
