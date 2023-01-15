# Miscellaneous FreeBSD Ports

* [as31](https://www.pjrc.com/tech/8051/tools/as31_old.html) : An Intel 8031/8051 assembler
* [beatrix](https://people.dsv.su.se/~fk/beatrix_home.html) : B3 organ simulator
* [dvm1200](https://github.com/lhondareyte/dvm1200) : Velleman DVM1200 command line interface
* [fxload](https://github.com/lhondareyte/firmwarehotplug) : Firmware downloader for Cypress EZ-USB devices
* [firmwarehotplug](https://github.com/lhondareyte/firmwarehotplug) : Open-source Firmwares for M-AUDIO Midi interfaces
* [jack2](https://jackaudio.org) : Specific version with minimum dependencies
* [jack_umidi](http://www.selasky.org/hans_petter) : Specific version without options
* [kconfig-frontends](http://ymorin.is-a-geek.org/projects/kconfig-frontends) : Required to build [NuttX](https://nuttx.org)
* [libsamplerate](http://www.mega-nerd.com/SRC/) : Specific strip down version
* [mailsend](https://github.com/muquit/mailsend/) : Simple command line mail sender
* [minipro](https://gitlab.com/DavidGriffith/minipro/) : do not use since there is an official port
* [mmm](https://github.com/lhondareyte/mmm) : Simple MIDI monitor
* [noizebox](https://github.com/lhondareyte/noizebox) : Old school synthesizer based on ncurses and fluidsynth
* [py-kwalify](https://pypi.org/project/pykwalify/) : Python module required to build [Zephyr](https://www.zephyrproject.org)
* [smart-psu](https://github.com/lhondareyte/smart-psu) : Smart PSU for ARM board
* [spectro450](https://github.com/lhondareyte/spectro450-core)
* [sqlite3](https://www.sqlite.org) : Specific version without GNU dependencies

# Howto

To build all packages : 

```
sudo make fetch
make package
```

To build a specific package, just type:

```
cd <port>
sudo make fetch
make package
```

The new package is now available in the sub-directory ```work/pkg```
