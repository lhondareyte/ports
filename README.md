# Miscellaneous FreeBSD Ports
* [as31](https://www.pjrc.com/tech/8051/tools/as31_old.html) : An Intel 8031/8051 assembler
* [firmwarehotplug](https://github.com/lhondareyte/firmwarehotplug) : Open-source Firmwares for M-AUDIO Midi interfaces
* [kconfig-frontends](http://ymorin.is-a-geek.org/projects/kconfig-frontends) : Needed to build [NuttX](https://nuttx.org)
* [minipro](https://gitlab.com/DavidGriffith/minipro/) : do not use this, since there is an official port
* [mmm](https://github.com/lhondareyte/mmm) : Simple MIDI monitor
* [noizebox](https://github.com/lhondareyte/noizebox) : Old school synthesizer based on ncurses and fluidsynth
* [py-kwalify](https://pypi.org/project/pykwalify/)
* [spectro450](https://github.com/lhondareyte/spectro450-core)
* [sqlite3](https://www.sqlite.org) : Specific version without GNU dependencies
# Howto
To build a specific package, just type:
```
cd <port>
make package
```
The new package is now available in the sub-directory ```work/pkg```
