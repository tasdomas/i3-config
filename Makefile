all: pa-applet

.PHONY: pa-applet
dependencies:
	sudo apt-get install glib-2.0-dev gtk+-3.0-dev libpulse-dev libnotify-dev

pa-applet: dependencies
	cd pa-applet; ./configure --prefix=`realpath ../local`
	$(MAKE) -C pa-applet 
	$(MAKE) -C pa-applet install
