# Miscellaneous FreeBSD Ports
* [firmwarehotplug](https://github.com/lhondareyte/firmwarehotplug) : Open-source Firmwares for M-AUDIO Midi interfaces
* [kconfig-frontends](http://ymorin.is-a-geek.org/projects/kconfig-frontends) : required to build [NuttX](https://nuttx.org/) on FreeBSD
* [minipro](https://gitlab.com/DavidGriffith/minipro/) : do not use this, since there is an official port
* [mmm](https://github.com/lhondareyte/mmm) : simple MIDI monitor
* [py-kwalify](https://pypi.org/project/pykwalify/)
* [spectro450](https://github.com/lhondareyte/spectro-450)
* [spectro450-core](https://github.com/lhondareyte/spectro450-core)
* [sqlite3](https://www.sqlite.org) database without GNU dependencies
# Howto
To build a specific package, just type:
```
cd <port>
make && make package
```
The new package is now available in the sub-directory ```work/pkg```
