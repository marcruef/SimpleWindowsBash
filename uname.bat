@echo off
if "%1"=="-a" GOTO all
if "%1"=="--all" GOTO all
if "%1"=="" GOTO sysname
if "%1"=="-s" GOTO sysname
if "%1"=="--sysname" GOTO sysname
if "%1"=="-m" GOTO machine
if "%1"=="--machine" GOTO machine
if "%1"=="-n" GOTO nodename
if "%1"=="--nodename" GOTO nodename
if "%1"=="-r" GOTO release
if "%1"=="--release" GOTO release
if "%1"=="-p" GOTO processor
if "%1"=="--processor" GOTO processor
if "%1"=="-v" GOTO osversion
if "%1"=="--help" GOTO help
if "%1"=="--version" GOTO version
GOTO error

:all
echo %OS% %DATE% %TIME% %PROCESSOR_IDENTIFIER%
GOTO end

:sysname
echo Windows
GOTO end

:machine
echo %PROCESSOR_ARCHITECTURE%
GOTO end

:nodename
hostname
GOTO end

:release
echo %OS%
GOTO end

:processor
echo %PROCESSOR_ARCHITECTURE%
GOTO end

:osversion
echo %OS% %DATE% %TIME%
GOTO end

:help
echo Usage: uname [OPTION]...
echo Print certain system information.  With no OPTION, same as -s.
echo.
echo  -a, --all         print all information
echo  -m, --machine     print the machine (hardware) type
echo  -n, --nodename    print the machine's network node hostname
echo  -r, --release     print the operating system release
echo  -s, --sysname     print the operating system name
echo  -p, --processor   print the host processor type
echo  -v                print the operating system version
echo      --help        display this help and exit
echo      --version     output version information and exit
echo.
echo Report bugs to marc.ruef@computec.ch.
GOTO end

:version
echo uname (GNU swb-utils) 1.0
echo Written by Marc Ruef.
echo.
echo Copyright (C) 2002 Marc Ruef
echo This is free software; see the source for copying conditions.  There is NO
echo warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
GOTO end

:error
echo Try `uname --help' for more information.
GOTO end

:end
