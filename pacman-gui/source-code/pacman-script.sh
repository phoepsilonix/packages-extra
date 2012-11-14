#!/bin/sh
TEXTDOMAINDIR=/usr/share/locale
TEXTDOMAIN=pacman-gui
img=/usr/share/pixmaps/pacmind.png

export TEXTDOMAINDIR=/usr/share/locale
export TEXTDOMAIN=pacman-gui

function_belong () {
	text=`zenity --title="$(gettext 'Search File')" --entry --text="$(gettext 'Search package containing the file:') 'pacman -Qo'"` 
	case $? in
		-1)
			echo "" 
		;;
		0)
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
	echo $text | xterm  -bg black -fg white -T "$(gettext 'Search File')" -e "pacman -Qo $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
}

function_clear () {
	zenity --question --title="$(gettext 'Clear Cache')" --text="$(gettext 'Clear Cache'):
	'pacman -Scc'" --ok-label="$(gettext 'Remove')" --cancel-label="$(gettext 'Cancel')"
	case $? in
		-1)
			echo "" 
		;;
		0)
			xterm  -bg black -fg white -T "$(gettext 'Clear Cache')" -e "pacman -Scc
			read -sp \"$(gettext 'Press Enter to close the window') \"
			"
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
}

function_dep () {
	zenity --question --title="$(gettext 'Remove Dependencies')" --text="$(gettext 'Remove Dependencies'):
	'pacman -R $(pacman -Qdtq)'" --ok-label="$(gettext 'Remove')" --cancel-label="$(gettext 'Cancel')"
	case $? in
		-1)
			echo "" 
		;;
		0)
			xterm -bg black -fg white -T "$(gettext 'Remove Dependencies')" -e "pacman -Rs $(pacman -Qdtq)
			read -sp \"$(gettext 'Press Enter to close the window') \"
			"
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
}

function_force () {
	zenity --question --title="$(gettext 'Update force mode')" --text="$(gettext 'Force upgrade'): 'pacman -Syuf'" --ok-label="$(gettext 'Upgrade')" --cancel-label="$(gettext 'Cancel')"
	case $? in
		-1)
			echo "" 
		;;
		0)
			xterm  -bg black -fg white -T "$(gettext 'Update System')" -e "pacman -Syuf
			read -sp \"$(gettext 'Press Enter to close the window') \"
			"
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
}

function_info_pkg () {
	text=`zenity --title="$(gettext 'Search Packages')" --entry --text="$(gettext 'Search Packages') : 'pacman -Qi'"` 
	case $? in
		-1)
			echo "" 
		;;
		0)
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
	echo $text | xterm  -bg black -fg white -T "$(gettext 'Info Packages')" -e "pacman -Qi $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
}

function_info () {
	info_img=/usr/share/pixmaps/pacman-gui.png
	export MAIN_DIALOG='
	 <window title="pacman-gui"  window_position="1">
	 <vbox>
	  <pixmap>
	      <input file>'$info_img'</input>
	    </pixmap>
	  <text use-markup="true">
	    <label>"<b>Pacman-Gui 0.1.14</b>"</label>
	  </text>
	  <text wrap="true" width-chars="50">
	    <label>'$(gettext 'Pacman-Gui is a Gtk Frontend for pacman, based on GTK-Dialog and inspired by pacmind')'</label>
	  </text>
	  <hbox>
	   <button ok></button>
	  </hbox>
	 </vbox>
	</window>
	'
	gtkdialog --program=MAIN_DIALOG
}


function_install () {
	if text=`zenity --title="$(gettext 'Install Packages')" --entry --text="$(gettext 'Install one or more packages'): 'pacman -S'
	$(gettext 'In case of multiple-choice enter a space between the one and the other')" --entry-text="$(gettext 'Insert package/s name')"` 
	then echo $text
	xterm  -bg black -fg white -T "$(gettext 'Install Packages')" -e "pacman -S $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
	fi
}

function_remove () {
	if text=`zenity --title="$(gettext 'Remove Packages')" --entry --text="$(gettext 'Remove one or more packages'): 'pacman -R'
	$(gettext 'In case of multiple-choice enter a space between the one and the other')" --entry-text="$(gettext 'Insert package/s name')"` 
	then echo $text
	xterm  -bg black -fg white -T "$(gettext 'Remove Packages')" -e "pacman -R $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
	fi
}

function_find_install () {
	text=`zenity --title="$(gettext 'Search for installed packages')" --entry --text="$(gettext 'Search for installed packages'): 'pacman -Q'"` 
	case $? in
		-1)
			echo "" 
		;;
		0)
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
	echo $text | xterm  -bg black -fg white -T "$(gettext 'Search e install package')" -e "pacman -Q $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
}

function_find () {
	text=`zenity --title="$(gettext 'Search Packages')" --entry --text="$(gettext 'Search packages by name or keyword'): 'pacman -Ss'
	$(gettext 'For example, for search a pdf reader type pdf')" --entry-text="$(gettext 'Type keyword')"` 
	case $? in
		-1)
			echo "" 
		;;
		0)
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
	echo $text | xterm  -bg black -fg white -T "$(gettext 'Search Package')" -e "pacman -Ss $text
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
}

function_update () {
	zenity --question --title="$(gettext 'Update System')" --text="$(gettext 'Upgrade packages'): 'pacman -Syu'" --ok-label="$(gettext 'Update')" --cancel-label="$(gettext 'Cancel')"
	case $? in
		-1)
			echo "" 
		;;
		0)
			xterm  -bg black -fg white -T "$(gettext 'Update System')" -e "pacman -Syu
			read -sp \"$(gettext 'Press Enter to close the window') \"
			"
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
}

function_sync () {
	zenity --question --title="$(gettext 'Sync DB')" --text="$(gettext 'Update repo'): 'pacman -Syy'" --ok-label="$(gettext 'Update')" --cancel-label="$(gettext 'Cancel')"
	case $? in
		-1)
			echo "" 
		;;
		0)
			xterm  -bg black -fg white -T "$(gettext 'Update repo')" -e "pacman -Syy
			read -sp \"$(gettext 'Press Enter to close the window') \"
			"
		;;
		1)
			exit 0 
		;;
		5)
			echo ""
		;;
	esac
}

function_inman () {
	if text=`zenity --title="$(gettext 'Install local Package')" --file-selection` 
	then echo $text
	xterm  -bg black -fg white -T "$(gettext 'Manually install one local package')" -e "pacman -U \"$text\"
	read -sp \"$(gettext 'Press Enter to close the window') \"
	"
	fi
}



case $1 in
	1)
		function_sync
	;;
	2)
		function_update
	;;
	3)
		function_force
	;;
	4)
		function_install
	;;
	5)
		function_remove
	;;
	6)
		function_find
	;;
	7)
		function_find_install
	;;
	8)
		function_belong
	;;
	9)
		function_info_pkg
	;;
	10)
		function_inman
	;;
	11)
		function_dep
	;;
	12)
		function_clear
	;;
	13)
		function_info
	;;
esac
