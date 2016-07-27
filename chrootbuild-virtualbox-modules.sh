#!/bin/bash

build(){
  buildpkg -sp virtualbox-modules &&
  buildpkg -sp virtualbox-modules -a i686
}
cd linux310*
build
cd ../linux312*
build
cd ../linux313*
build
cd ../linux314*
build
cd ../linux316*
build
cd ..linux318*
build
cd ../linux319*
build
cd ../linux41*
build
cd ../linux42*
build
cd ../linux44*
build
cd ../linux45*
build
cd ../linux46*
build
cd ../linux47*
build
