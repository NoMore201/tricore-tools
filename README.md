# Tricore Tools

This repository contains patches and script to build GDB and QEMU with support for the Tricore architecture.

GDB Implementation was taken from [this repository](https://github.com/Gigallith/gdb-tricore) and organized
into a patch that can be applied to the latest release tag (11.2 at the time of writing).
While the origin of the mentioned repo is unknown, the implementation seems
to be contributed by some [Hightec](https://hightec-rt.com/en/) developer and released under the GPL license.
More info on this:

- https://gist.github.com/bri3d/5429c0b25346a0830c01042e77d6914c#getting-gdb
- https://github.com/Gigallith/gdb-tricore

Tricore support in QEMU is already available but needs to be enabled at compile time.

## Content of this repo

- **tricore-gdb** contains the PKGBUILD and the patches used to build tricore-gdb uwing MSYS2 framework
- **qemu** contains scripts and documentation to build and setup QEMU with tricore support

## License

- For GDB and QEMU license, refer to the upstream project
- For MSYS2 pkgbuild and patches, refer to the upstream project
- Special note about tricore GDB patch: code is licensed under the GPLv3 by the original author
- All the code contributed from this repo is licensed with GPLv3