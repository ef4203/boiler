default:
	@echo Boiler doesn\'t need to compile, install it directly with \'sudo make install\'
install:
	@if [ ! -d /usr/share/boiler ]; then git clone https://github.com/ef4203/boiler /usr/share/boiler; else echo "Already installed"; fi
	@ln -s /usr/share/boiler/boiler /bin/boiler
remove:
	@rm -rf /usr/share/boiler
	@rm /bin/boiler
