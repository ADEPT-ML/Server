@echo off
chcp 65001 >NUL

echo.
echo                                      ,Æ▓▓▓▓▓▓▓▓^&┐
echo                                  ,g▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓N,
echo                              ,g▓▓▓▓▓▓▓▓▓▓▒▒▒▒▓▓▓▓▓▓▓▓▓▓W,
echo                          ,╔▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓╗,
echo                       ╓$▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓w
echo                   ╓Æ▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒░░░░░░░░▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓^&╖
echo                ▄▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▄
echo               ▐██▓▓▓▓▓▒▒▒▒▒▒▒▒▒░░░░░░░░░░░┴┴░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▌
echo               ▐█████▓▓▒▒▒▒▒▒░░░░░░░░░░╜"      "┴░░░░░░░░░░▒▒▒▒▒▒▒▒▓▓▓▓▓▌
echo.
echo           ,▄▄▄▄,      ▄▄▄▄▄▄▄▄▄,      ▄▄▄▄▄▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄▄▄▄▄▄    ▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo        ,██████████,   ████████████,   █████████████ ██████████████  ██████████████
echo       ▄███▀    ▀███▄  ███      ▀████  ███           ████       ▀███      ███▌
echo       ███        ███  ███        ███▌ ███▄▄▄▄▄▄▄▄   ████       ▄███      ███▌
echo       ██████████████  ███        ███▌ ███████████   ██████████████       ███▌
echo       ██████████████  ███       ████  ███           ██████████▀▀         ███▌
echo       ███        ███  ███▄▄▄▄▄█████   ███▄▄▄▄▄▄▄▄▄▄ ████                 ███▌
echo       ███        ███  █████████▀▀     █████████████ ████                 ███▌
echo.
echo               ▐█████▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒@╓,      ,╓@║▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▌
echo               ▐██████▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒@╕╓@╢▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓█▓▓▓▓▌
echo                ██████████▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓█████████
echo                  "▀█████████▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓█████████▀▀
echo                      ╙▀█████████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█████████▀▀
echo                          ▀▀█████████▓▓▓▓▓▓▓▓▓▓▓▓▓▓██████████▀
echo                              ▀██████████▓▓▓▓▓▓██████████▀
echo                                 `▀██████████████████▀`
echo                                     "▀██████████▀"
echo.

:start
if not exist data\ goto missing-data
docker-compose -f docker-compose.yaml up --detach
pause
EXIT

:missing-data
echo The data directory is missing!
echo Try again:
pause
goto start