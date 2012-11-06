#! /bin/bash
TEXTDOMAINDIR=/usr/share/locale
TEXTDOMAIN=pacman-gui

# path pacman-script.sh
path=/usr/share/pacman-gui

PIXMAP=/usr/share/pixmaps

UPDATE="$path/pacman-script.sh 1"
UPGRADE="$path/pacman-script.sh 2"
FORCE="$path/pacman-script.sh 3"
INSTPAC="$path/pacman-script.sh 4"
UPPACK="$path/pacman-script.sh 10"
REMOVE="$path/pacman-script.sh 5"
SEARCH="$path/pacman-script.sh 6"
SEARCHINSTALL="$path/pacman-script.sh 7"
BELONG="$path/pacman-script.sh 8"
INFOPAC="$path/pacman-script.sh 9"
DEPPAC="$path/pacman-script.sh 11"
CACHE="$path/pacman-script.sh 12"
INFO="$path/pacman-script.sh 13"

SYNAPTIC=/usr/local/bin/xlm-synaptic.sh

export TEXTDOMAINDIR=/usr/share/locale
export TEXTDOMAIN=pacman-gui

export MAIN_DIALOG='
<window title="pacman-gui"  window_position="1">
 <vbox>
<pixmap><input file>'$PIXMAP/pacman-gui.png'</input></pixmap>
<text><label>'$(gettext 'pacman-gui - Gtk Frontend for pacman')'</label></text>
<hbox>
<frame>
<button><input file>'$PIXMAP/pacman-gui-refresh.png'</input>
<label>'$(gettext 'Sync DB')'</label>
<action signal="clicked">'$UPDATE' &</action></button>
<button><input file>'$PIXMAP/pacman-gui-package-upgrade.png'</input>
<label>'$(gettext 'Update System')'</label>
<action signal="clicked">'$UPGRADE' &</action></button>
<button>
<input file>'$PIXMAP/pacman-gui-clear.png'</input>
<label>'$(gettext 'Clear Cache')'</label>
<action>'$CACHE' &</action></button>
</frame>
<frame>
<button>
<input file>'$PIXMAP/pacman-gui-package-install.png'</input>
<label>'$(gettext 'Install Packages')'</label>
<action signal="clicked">'$INSTPAC' &</action>
</button>
<button>
<input file>'$PIXMAP/pacman-gui-package-install.png'</input>
<label>'$(gettext 'Install local Package')'</label>
<action>'$UPPACK' &</action></button>
<button>
<input file>'$PIXMAP/pacman-gui-package-remove.png'</input>
<label>'$(gettext 'Remove Packages')'</label>
<action>'$REMOVE' &</action></button>
</frame>
<frame>
<button><input file>'$PIXMAP/pacman-gui-contents.png'</input>
<label>'$(gettext 'Search Packages')'</label>
<action signal="clicked">'$SEARCH' &</action></button>
<button>
<input file>'$PIXMAP/pacman-gui-contents.png'</input>
<label>'$(gettext 'Search File')'</label>
<action signal="clicked">'$BELONG' &</action>
</button>
<button>
<input file>'$PIXMAP/pacman-gui-about.png'</input>
<label>'$(gettext 'Package Details')'</label>
<action>'$INFOPAC' &</action></button>

</frame>
</hbox>
<frame>
<button>
<input file>'$PIXMAP/pacman-gui-new.png'</input>
<label>Manjaro Linux News</label>
<action signal="clicked">xdg-open "http://www.manjaro.org"</action>
</button>
<button>
<input file>'$PIXMAP/pacman-gui-search.png'</input>
<label>'$(gettext 'Open PkgBrowser')'</label>
<action signal="clicked">pkgbrowser</action>
</button>
</frame>
<hbox>
<button>
<input file>'$PIXMAP/pacman-gui-about.png'</input>
<label>Info</label>
<action signal="clicked">'$INFO' &</action>
</button>
<button>
<label>'$(gettext 'Exit')'</label>
<input file>'$PIXMAP/pacman-gui-remove.png'</input>
<action type="exit">exit 0</action>
</button>
</hbox>
</vbox>
</window>
'

gtkdialog --program=MAIN_DIALOG
