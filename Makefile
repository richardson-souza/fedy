# Install Fedy4Ubuntu

install-core:
	install -dm755 $(DESTDIR)/usr/bin/
	install -dm755 $(DESTDIR)/usr/share/fedy4ubuntu/

	for f in *; do ([ $$f != "plugins" ]) && cp -pr $$f $(DESTDIR)/usr/share/fedy4ubuntu/; done

	install -Dpm 0755 fedy4ubuntu.exec $(DESTDIR)/usr/bin/fedy4ubuntu

	install -Dpm 0644 fedy4ubuntu.desktop $(DESTDIR)/usr/share/applications/org.fedy4ubuntu.desktop
	install -Dpm 0644 fedy4ubuntu.appdata.xml $(DESTDIR)/usr/share/appdata/fedy4ubuntu.appdata.xml

	install -Dpm 0644 fedy4ubuntu.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/fedy4ubuntu.svg
	install -Dpm 0644 fedy-symbolic.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/fedy-symbolic.svg

	install -Dpm 0644 run-as-root.policy $(DESTDIR)/usr/share/polkit-1/actions/org.fedy4ubuntu.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi


install-plugins:
	install -dm755 $(DESTDIR)/usr/share/fedy4ubuntu/plugins

	cp -pr plugins/* $(DESTDIR)/usr/share/fedy4ubuntu/plugins/


install: install-core install-plugins


uninstall:
	rm -rf $(DESTDIR)/usr/share/fedy4ubuntu/

	rm -f $(DESTDIR)/usr/bin/fedy4ubuntu

	rm -f $(DESTDIR)/usr/share/applications/org.fedy4ubuntu.desktop
	rm -f $(DESTDIR)/usr/share/appdata/fedy4ubuntu.appdata.xml

	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/fedy4ubuntu.svg
	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/fedy-symbolic.svg

	rm -f $(DESTDIR)/usr/share/polkit-1/actions/org.fedy4ubuntu.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi
