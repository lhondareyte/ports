# Miscellaneous FreeBSD Ports

* [as31](https://www.pjrc.com/tech/8051/tools/as31_old.html) : An Intel 8031/8051 assembler
* [beatrix](https://people.dsv.su.se/~fk/beatrix_home.html) : B3 organ emulator
* [dvm1200](https://github.com/lhondareyte/dvm1200) : Velleman DVM1200 command line interface
* [fxload](https://github.com/lhondareyte/firmwarehotplug) : Firmware downloader for Cypress EZ-USB devices
* [firmwarehotplug](https://github.com/lhondareyte/firmwarehotplug) : Open-source Firmwares for M-AUDIO Midi interfaces
* [GALasm](https://github.com/daveho/GALasm) : Open-source GAL assembler
* [hex2bin](https://github.com/bradgrantham/hex2bin) : INTEL HEX to binary converter
* [jack](https://jackaudio.org) : Specific version with minimum dependencies
* [jackctl](http://github.com/lhondareyte/jackctl.git) : CLI for JACK audio Server
* [jack_umidi](http://www.selasky.org/hans_petter) : Specific version without options
* [libsamplerate](http://www.mega-nerd.com/SRC/) : Specific strip down version
* [mailsend](https://github.com/muquit/mailsend/) : Simple command line mail sender
* [memsim2](https://github.com/nils-eilers/memsim2/) : CLI for memSIM2 emulator (GPLv2)
* [memsimctl](https://github.com/ra1fh/memsim/ctl) : Another cli for memSIM2 emulator (ISC)
* [noizebox](https://github.com/lhondareyte/noizebox) : Old school synthesizer based on ncurses and fluidsynth
* [smart-psu](https://github.com/lhondareyte/smart-psu) : Smart PSU for ARM board
* [sfubar](https://github.com/freepats/tools.git)
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
