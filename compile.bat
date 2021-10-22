:: SPDX-License-Identifier: MIT
:: Copyright (C) 2018-2019, 2021 Nathaniel Fitzenrider <https://github.com/nfitzen>

@echo off

mkdir buildsupport
rd /S /Q build
mkdir build
mkdir build\ncustomcontent

call :download_7zip

if not exist src\ncustomcontent (
    echo "What're you doing without my scripts? Download them."
    pause
    exit 1
)

robocopy .\src\ncustomcontent .\build\ncustomcontent /E

rd /S /Q src\ncustomcontent\sound
copy README.md .\build\ncustomcontent\README.md
copy LICENSE .\build\ncustomcontent\LICENSE
robocopy LICENSES\ .\build\ncustomcontent\LICENSES\ /S
del .\dist\ncustomcontent.zip
%_7zip% a .\dist\ncustomcontent.zip .\build\ncustomcontent

pause

exit /B 0

:download_7zip
where /q 7z
if errorlevel 1 (
    if not exist buildsupport\7za.exe (
        powershell -Command "Invoke-WebRequest https://www.7-zip.org/a/7zr.exe -OutFile buildsupport\7zr.exe"
        powershell -Command "Invoke-WebRequest https://www.7-zip.org/a/7z1900-extra.7z -OutFile buildsupport\7zex.7z"
        .\buildsupport\7zr.exe e buildsupport\7zex.7z 7za.exe -obuildsupport\
        del .\buildsupport\7zr.exe buildsupport\7zex.7z
    )
    set _7zip=.\buildsupport\7za.exe
) else set _7zip=7z
exit /B 0
