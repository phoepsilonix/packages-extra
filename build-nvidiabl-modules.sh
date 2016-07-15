#!/bin/bash
rm -Rf */*nvidiabl/{src,pkg}
cd linux310*/*nvidiabl
makepkg -df
cd ../../linux312*/*nvidiabl
makepkg -df
cd ../../linux313*/*nvidiabl
makepkg -df
cd ../../linux314*/*nvidiabl
makepkg -df
cd ../../linux316*/*nvidiabl
makepkg -df
cd ../../linux318*/*nvidiabl
makepkg -df
cd ../../linux319*/*nvidiabl
makepkg -df
cd ../../linux41*/*nvidiabl
makepkg -df
cd ../../linux42*/*nvidiabl
makepkg -df
