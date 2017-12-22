@echo off
D:
cd D:\Apps\PortableAppz\PeerBlockPortable
start PeerBlockPortable.exe
cd D:\Apps\PortableAppz\qBittorrentPortable
START /B /wait qBittorrentPortable.exe
:REKILL
taskkill /IM peerblock.exe
taskkill /IM PeerBlockPortable.exe
tasklist /FI "IMAGENAME eq peerblock.exe" 2>NUL | find /I /N "peerblock.exe">NUL
if "%ERRORLEVEL%"=="0" ( GOTO :REKILL )
tasklist /FI "IMAGENAME eq PeerBlockPortable.exe" 2>NUL | find /I /N "PeerBlockPortable.exe">NUL
if "%ERRORLEVEL%"=="0" ( GOTO :REKILL )