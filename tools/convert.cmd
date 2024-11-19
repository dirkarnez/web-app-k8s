@REM run as Administrator
@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads

set SEVENZIP=C:\"Program Files"\7-Zip\7z.exe
set KOMPOSE_EXE=%DOWNLOADS_DIR%\kompose-windows-amd64.exe


if not exist %KOMPOSE_EXE% (
cd /d "%DOWNLOADS_DIR%" &&^
%SystemRoot%\System32\curl.exe "https://github.com/kubernetes/kompose/releases/download/v1.34.0/kompose-windows-amd64.exe" -L -O
)

if exist %KOMPOSE_EXE% (
    echo kompose %KOMPOSE_EXE% found
)
