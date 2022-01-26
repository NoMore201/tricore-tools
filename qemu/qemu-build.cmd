@echo off
@echo Build QEMU with tricore architecture support

set scriptdir=%~dp0
set startupdir=%cd%
set qemudir=%scriptdir%\qemu

if not exist %scriptdir%\qemu (
    if not exist %startupdir%\qemu (
        echo Unable to find qemu folder
        exit /B 1
    )
    set qemudir=%startupdir%\qemu
)

if not exist %qemudir%\README.rst (
    echo QEMU directory seems to be empty
    exit /B 1
)

rem If toolchain path is not provided try with the default path
if not defined MSYS2_PATH (
    echo Using default installer path for msys2
    set "MSYS2_PATH=C:\msys64"
)

if not exist %MSYS2_PATH% (
    echo You need to provide a valid directory in MSYS2_PATH
    pause
    exit /B 1
)

cd %MSYS2_PATH%\ucrt64\bin
set "PATH=%cd%;%PATH%"
cd %startupdir%

set bashcmd=%MSYS2_PATH%\usr\bin\bash.exe

rem Build qemu
cd qemu
rem Preserve working directory inside bash shell
set CHERE_INVOKING=yes
rem Use UCRT64 environment
set MSYSTEM=UCRT64
%bashcmd% -lc "./configure --ninja=/ucrt64/bin/ninja --meson=/ucrt64/bin/meson --target-list=tricore-softmmu --enable-tools --enable-lzo --enable-sdl --enable-gtk --enable-bzip2 --disable-capstone"
%bashcmd% -lc "cd build && ninja"