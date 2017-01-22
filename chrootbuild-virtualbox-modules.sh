
#!/bin/bash

build(){
  #buildpkg -sp virtualbox-modules &&
  buildpkg -sp virtualbox-modules -a i686
}

cd linux310*
build
cd ../linux312*
build
cd ../linux316*
build
cd ..linux318*
build
cd ../linux41*
build
cd ../linux44*
build
cd ../linux48*
build
cd ../linux49*
build
cd ../linux410*
build
