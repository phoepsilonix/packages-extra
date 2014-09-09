#!/bin/bash

for pkg in $(ls */PKGBUILD | sed s'|/PKGBUILD||g') ; do
   echo "Edit ${pkg}"
   pushd ${pkg} &>/dev/null
   _rel=$(cat PKGBUILD | grep -m1 pkgrel= | cut -d= -f2 | cut -d. -f1)
   _decrel=$(cat PKGBUILD | grep -m1 pkgrel= | cut -d. -f2 | head -n1)
   sed -i -e "s/pkgrel=${_rel}.${_decrel}/pkgrel=${_rel}.$((${_decrel}+1))/" PKGBUILD
   popd &>/dev/null
done
