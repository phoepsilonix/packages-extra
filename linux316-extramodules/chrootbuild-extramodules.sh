#!/bin/bash

if [ "`sudo cat /etc/sudoers | grep buildpkg`" == "" ] ; then
   echo "please add '`whoami` ALL=NOPASSWD: /usr/bin/buildpkg' to your /etc/sudoers file"
   exit 1
fi

# catalyst-server now conflicts with xorg-server-common, so lets start off with catalyst in a clean chroot
echo '==> building catalyst ...'
buildpkg -csp catalyst && buildpkg -csp catalyst -a i686

echo '==> building other extramodules ...'
for p in \
        acpi_call \
        bbswitch \
        broadcom-wl \
        ndiswrapper \
        nvidia \
        nvidiabl \
        open-vm-tools-modules \
        r8168 \
        rt3562sta \
        spl_zfs \
        tp_smapi \
        vhba-module \
        virtualbox-modules      
do
    buildpkg -sp $p && buildpkg -sp $p -a i686
done

# legacy nvidia modules depend on conflicting utils pkgs; since buildpkg doesn't allow removing pkgs, more clean chroots are needed:
echo '==> building legacy nvidia modules ...'
for n in \
        nvidia-304xx \
        nvidia-340xx
do    
    buildpkg -csp $n && buildpkg -csp $n -a i686
done

echo 'building extramodules done.'
exit 0
