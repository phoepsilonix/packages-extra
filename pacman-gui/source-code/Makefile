SHELL = /bin/bash
INSTALL = /usr//bin/install -c
MSGFMT = /usr/bin/msgfmt
SED = /bin/sed
DESTDIR =
bindir = /usr/bin
localedir = /usr/share/locale
config = /usr/share/pacman-gui
icons = /usr/share/pixmaps
deskdir = /usr/share/applications

all:

install: all
	$(INSTALL) -d $(DESTDIR)$(bindir)
	$(INSTALL) -d $(DESTDIR)$(config)
	$(INSTALL) -d $(DESTDIR)$(icons)
	$(INSTALL) -d $(DESTDIR)$(deskdir)
	$(INSTALL) -m755 pacman-gui $(DESTDIR)$(bindir)
	$(INSTALL) -m755 pacman-gui.sh $(DESTDIR)$(config)
	$(INSTALL) -m755 pacman-script.sh $(DESTDIR)$(config)
	$(INSTALL) -m644 COPYING $(DESTDIR)$(config)
	$(INSTALL) -m644 pacman-gui.png $(DESTDIR)$(icons)
	$(INSTALL) -m644 pacman-gui.svg $(DESTDIR)$(icons)
	$(INSTALL) -m644 pacman-gui.desktop $(DESTDIR)$(deskdir)
	for file in *.png; \
	do \
		$(INSTALL) -m644 $$file $(DESTDIR)$(icons)/pacman-gui-$$file; \
	done
	for file in po/*.po; \
	do \
		lang=$$(echo $$file | $(SED) -e 's#.*/\([^/]\+\).po#\1#'); \
		$(INSTALL) -d $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES; \
		$(MSGFMT) -o $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES/pacman-gui.mo $$file; \
	done
