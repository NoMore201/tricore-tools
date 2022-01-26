# Tricore GDB

This repository aims at providing a version of GDB with added support for the Tricore architecture.
The patch-set was taken from [this repository](https://github.com/Gigallith/gdb-tricore) and adjusted to
make it compatible with a more recent gdb release (11.2 at the time of writing).

While the origin of the source code from the mentioned repo is unknown, the patch-set seems to be developed by some Hightec
developers and release under the GPL license. More info on this:

- https://gist.github.com/bri3d/5429c0b25346a0830c01042e77d6914c#getting-gdb
- https://github.com/Gigallith/gdb-tricore

## Content of this repo

- **tricore-gdb** contains the PKGBUILD (based on the one from MINGW-packages repository of the MSYS2 project) and the patches
used to build GDB with Tricore support
- **qemu** scripts and documentation to build QEMU with tricore support