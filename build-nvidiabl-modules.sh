#!/bin/bash
rm -Rf */*nvidiabl/{src,pkg}
cd linux310*/*nvidiabl
makepkg --sign -df
cd ../../linux312*/*nvidiabl
makepkg --sign -df
cd ../../linux313*/*nvidiabl
makepkg --sign -df
cd ../../linux314*/*nvidiabl
makepkg --sign -df
cd ../../linux316*/*nvidiabl
makepkg --sign -df
cd ../../linux318*/*nvidiabl
makepkg --sign -df
cd ../../linux319*/*nvidiabl
makepkg --sign -df
cd ../../linux41*/*nvidiabl
makepkg --sign -df
cd ../../linux42*/*nvidiabl
makepkg --sign -df
