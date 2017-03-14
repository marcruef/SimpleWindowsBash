@echo off
if "%1"=="" GOTO paramissing

help %1

:paramissing
echo What manual page do you want?
