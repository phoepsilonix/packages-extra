#!/bin/sh

_has_hook(){
    local name="$1"
    source /etc/mkinitcpio.conf
    for h in ${HOOKS[@]};do
        if [[ "$h" == "$name" ]];then
            return 0
        else
            return 1
        fi
    done
}

_has_arg(){
    local name="$1"
    source /etc/default/grub
    for arg in ${GRUB_CMDLINE_LINUX_DEFAULT[@]};do
        if [[ "$arg" == "$name";then
            return 0
        else
            return 1
        fi
    done
}

_set_ply_hook(){
    sed -e 's/^HOOKS="base udev/HOOKS="base udev plymouth /' -i /etc/mkinitcpio.conf
}

_unset_ply_hook(){
    sed -e 's/^HOOKS="base udev plymouth/HOOKS="base udev /' -i /etc/mkinitcpio.conf
}

_set_ply_encrypt(){
    if $(_has_hook "encrypt");then
        sed -e 's/encrypt filesystems /plymouth-encrypt filesystems /g' -i /etc/mkinitcpio.conf
    fi
}

_unset_ply_encrypt(){
    if $(_has_hook "plymouth-encrypt");then
        sed -e 's/plymouth-encrypt filesystems /encrypt filesystems /g' -i /etc/mkinitcpio.conf
    fi
}

_set_grub_args(){
    if $(_has_arg "quiet");then
        sed -e 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash /' -i /etc/default/grub
    fi
}

_unset_grub_args(){
    if $(_has_arg "splash");then
        sed -e 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash /GRUB_CMDLINE_LINUX_DEFAULT="quiet /' -i /etc/default/grub
    fi
}

_mk_initcpio(){
    for preset in /etc/mkinitcpio.d/*.preset; do
        local kernel=${preset##*/}
        mkinitcpio -p ${kernel%.preset}
    done
}

# $1: optional "-plymouth" service name extension
# $2: enable/disable
_configure_dm_svc(){
    if [[ -d /run/systemd ]];then
        local ply="$1" action="$2"
        if [[ -d /run/gdm ]];then
            systemctl $action gdm$ply
        elif [[ -d /run/lightdm ]];then
            systemctl $action lightdm$ply
        elif [[ -d /run/lxdm ]];then
            systemctl $action lxdm$ply
        fi
    fi
}

