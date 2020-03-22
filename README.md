# Miscellaneous FreeBSD Ports
* [as31](https://www.pjrc.com/tech/8051/tools/as31_old.html) : An Intel 8031/8051 assembler
* [dvm1200](https://github.com/lhondareyte/dvm1200) : Velleman DVM1200 command line interface
* [firmwarehotplug](https://github.com/lhondareyte/firmwarehotplug) : Open-source Firmwares for M-AUDIO Midi interfaces
* [jackit](https://jackaudio.org) : Specific version with minimum dependencies
* [jack_umidi](http://www.selasky.org/hans_petter) : Specific version without options
* [kconfig-frontends](http://ymorin.is-a-geek.org/projects/kconfig-frontends) : Required to build [NuttX](https://nuttx.org)
* [minipro](https://gitlab.com/DavidGriffith/minipro/) : do not use this, since there is an official port
* [mmm](https://github.com/lhondareyte/mmm) : Simple MIDI monitor
* [noizebox](https://github.com/lhondareyte/noizebox) : Old school synthesizer based on ncurses and fluidsynth
* [py-kwalify](https://pypi.org/project/pykwalify/) : Python module required to build [Zephyr](https://www.zephyrproject.org)
* [smart-psu](https://github.com/lhondareyte/smart-psu) : Smart PSU for ARM board
* [spectro450](https://github.com/lhondareyte/spectro450-core)
* [sqlite3](https://www.sqlite.org) : Specific version without GNU dependencies
# Howto
To build a specific package, just type:
```
cd <port>
make package
```
The new package is now available in the sub-directory ```work/pkg```
