# Miscellaneous FreeBSD Ports
* [firmwarehotplugs](https://github.com/lhondareyte/firmwarehotplug)
* [mmm](https://github.com/lhondareyte/mmm)
* sqlite3 (without GNU dependencies)
* [minipro](https://gitlab.com/DavidGriffith/minipro/) : do not use this, since there is an official port
* [kconfig-frontends](http://ymorin.is-a-geek.org/projects/kconfig-frontends) : required to build [NuttX](https://nuttx.org/) on FreeBSD
* [spectro450](https://github.com/lhondareyte/spectro450)
* [spectro450-utils](https://github.com/lhondareyte/spectro450-utils)

# Howto
To build a specific package, just type:
```
cd <port>
make && make package
```
The new package is now availaible in the sub-directory ```work/pkg```
