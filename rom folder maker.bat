@echo off
setlocal enabledelayedexpansion
:: Define categories
set "nintendo=gb gbc gba nes snes n64 gamecube wii wiiu switch nds 3ds vb fds sfc pokemon_mini gba_e-reader"
set "sony=ps1 ps2 ps3 psp psvita"
set "sega=mastersystem megadrive genesis segacd 32x saturn dreamcast gamegear pico sg-1000"
set "atari=atari2600 atari5200 atari7800 lynx jaguar jaguardvd atarist atari800"
set "nec=pce pcenginecd pce_supergrafx turbografx16 turbografxcd pc-fx"
set "snk=neogeo neogeocd ngp ngpc"
set "computers=amiga amigacd32 c64 c128 vic20 zxspectrum amstradcpc apple2 msx msx2 x68000 pc-98 pc-88 x1"
set "others=3do wonderswan wonderswancolour cd-i playdate n-gage vectrex intellivision colecovision odyssey2 channel-f gameandwatch arcade mame fba fbneo"

set "all_folders=%nintendo% %sony% %sega% %atari% %nec% %snk% %computers% %others%"

echo ========================================================
echo        GENERATING STRUCTURE INSIDE /ROMS/
echo ========================================================

for %%a in (%all_folders%) do (
    if not exist "%%a" (
        mkdir "%%a"
        echo [+] Created: %%a
    )
)

echo.
echo Setup complete. All folders are inside: %cd%
echo.
pause
