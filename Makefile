Version=18.0

PREFIX = /usr/local

CFG = $(wildcard cfg/*.cfg)

MTHEME = \
	$(wildcard snigdhaos-live/*.png) \
	snigdhaos-live/theme.txt \
	snigdhaos-live/*.pf2

MICONS= $(wildcard snigdhaos-live/icons/*.png)

TZ = $(wildcard tz/*)

LOCALES = $(wildcard locales/*)

install_common:
	install -dm0755 $(DESTDIR)$(PREFIX)/share/grub/cfg
	install -m0644 ${CFG} $(DESTDIR)$(PREFIX)/share/grub/cfg

	install -dm0755 $(DESTDIR)$(PREFIX)/share/grub/tz
	install -m0644 ${TZ} $(DESTDIR)$(PREFIX)/share/grub/tz

	install -dm0755 $(DESTDIR)$(PREFIX)/share/grub/locales
	install -m0644 ${LOCALES} $(DESTDIR)$(PREFIX)/share/grub/locales

uninstall_common:
	for f in ${CFG}; do rm -f $(DESTDIR)$(PREFIX)/share/grub/cfg/$$f; done
	for f in ${TZ}; do rm -f $(DESTDIR)$(PREFIX)/share/grub/tz/$$f; done
	for f in ${LOCALES}; do rm -f $(DESTDIR)$(PREFIX)/share/grub/locales/$$f; done

install_snigdhaos:
	install -dm0755 $(DESTDIR)$(PREFIX)/share/grub/themes/snigdhaos-live
	install -m0644 ${MTHEME} $(DESTDIR)$(PREFIX)/share/grub/themes/snigdhaos-live

	install -dm0755 $(DESTDIR)$(PREFIX)/share/grub/themes/snigdhaos-live/icons
	install -m0644 ${MICONS} $(DESTDIR)$(PREFIX)/share/grub/themes/snigdhaos-live/icons

uninstall_snigdhaos:
	for f in ${MTHEME}; do rm -f $(DESTDIR)$(PREFIX)/share/grub/theme/snigdhaos-live/$$f; done
	for f in ${MICONS}; do rm -f $(DESTDIR)$(PREFIX)/share/grub/theme/snigdhaos-live/icons/$$f; done

install: install_common install_snigdhaos

uninstall: uninstall_common uninstall_snigdhaos

dist:
	git archive --format=tar --prefix=grub-theme-$(Version)/ $(Version) | gzip -9 > grub-theme-$(Version).tar.gz
	gpg --detach-sign --use-agent grub-theme-$(Version).tar.gz

.PHONY: install uninstall dist
