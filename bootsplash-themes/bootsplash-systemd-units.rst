==================================
The Linux bootsplash systemd units
==================================

:Date: December, 2017
:Author: Max Staudt <mstaudt@suse.de>

Copy the files to `/usr/lib/systemd/system/` and run:

  systemctl enable bootsplash-ask-password-console.path
  systemctl enable bootsplash-ask-password-console.service
  systemctl enable bootsplash-hide-when-booted.service
  systemctl enable bootsplash-show-on-shutdown.service
  systemctl mask systemd-ask-password-console.path

and maybe the distro's mkinitcpio, if needed.

If `bootsplash-hide-when-booted.service` is not needed for Manjaro, that's because it's really only needed for text mode use, as otherwise the splash won't go away when the console is ready. If you only ever boot to X, then you can leave it out.

Best, Max
