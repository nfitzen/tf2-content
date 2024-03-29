:: SPDX-License-Identifier: MIT
:: Copyright (C) 2018-2019 Nathaniel Fitzenrider <https://github.com/nfitzen>

mkdir buildsupport
rd /S /Q build
mkdir build

where /q 7z
if errorlevel 1 (
    if not exist 7zr.exe powershell -Command "Invoke-WebRequest https://www.7-zip.org/a/7zr.exe -OutFile 7zr.exe"
    set _7zip=7zr
) else set _7zip=7z

if not exist buildsupport\7zSD.sfx (
    powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OlegScherbakov/7zSFX/master/files/7zsd_extra_162_3888.7z -OutFile buildsupport\7zSFX.7z"
    %_7zip% e buildsupport\7zSFX.7z 7zsd_All.sfx
    move 7zsd_All.sfx buildsupport\7zSD.sfx
    del buildsupport\7zSFX.7z
)
if not exist src\ncustomcontent (
    echo "What're you doing without my scripts? Download them."
    exit
)

move 7zr.exe src\7zr.exe
cd src
rd /S /Q ncustomcontent\sound
copy "..\README.md" "ncustomcontent\README.md"
copy ..\LICENSE ncustomcontent\LICENSE
mkdir LICENSES
robocopy ..\LICENSES\ ncustomcontent\LICENSES\
%_7zip% a -t7z ..\build\ncustomcontent ncustomcontent
move 7zr.exe ..\7zr.exe
cd ..
del src\ncustomcontent\README.md

if not exist buildsupport\config.txt powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/nfitzen/tf2-content/master/buildsupport/config.txt -OutFile buildsupport\config.txt"
copy /b buildsupport\7zSD.sfx + buildsupport\config.txt + build\ncustomcontent.7z build\CustomContentInstaller.exe
