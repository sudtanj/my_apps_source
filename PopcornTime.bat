@echo off
set workdir=%~dp0
pushd %workdir%
cd %workdir%\PortableAppz\PeerBlockPortable
start PeerBlockPortable.exe
cd %workdir%\PortableAppz\PopcornTimeDesktopPortable
echo %cd%
start /B /wait PopcornTimeDesktopPortable.exe
:REKILL
taskkill /IM peerblock.exe
taskkill /IM PeerBlockPortable.exe
tasklist /FI "IMAGENAME eq peerblock.exe" 2>NUL | find /I /N "peerblock.exe">NUL
if "%ERRORLEVEL%"=="0" ( GOTO :REKILL )
tasklist /FI "IMAGENAME eq PeerBlockPortable.exe" 2>NUL | find /I /N "PeerBlockPortable.exe">NUL
if "%ERRORLEVEL%"=="0" ( GOTO :REKILL )
exit