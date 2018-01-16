:: Copyright (c) 2009-2017 Andreas Göransson <andreas.goransson@gmail.com>
:: Copyright (c) 2009-2017 Indrek Ardel <indrek@ardel.eu>
::
:: This file is part of Call of Duty 4 Promod.
::
:: Call of Duty 4 Promod is licensed under Promod Modder Ethical Public License.
:: Terms of license can be found in LICENSE.md document bundled with the project.

@echo off

SET work_directory=%~dp0
cd %work_directory%

xcopy ui_mp ..\..\raw\ui_mp /SY
xcopy english ..\..\raw\english /SY
xcopy ui ..\..\raw\ui /SY
xcopy sound ..\..\raw\sound /SY
xcopy soundaliases ..\..\raw\soundaliases /SY
xcopy materials ..\..\raw\materials /SY
xcopy material_properties ..\..\raw\material_properties /SY
xcopy promod ..\..\raw\promod /SY
xcopy maps ..\..\raw\maps /SY
xcopy mp ..\..\raw\mp /SY
xcopy shock ..\..\raw\shock /SY
xcopy xmodel ..\..\raw\xmodel /SY
xcopy shock ..\..\raw\shock /SY
xcopy readme.txt ..\..\raw /SY
copy /Y mod.csv ..\..\zone_source

cd ..\..\bin
linker_pc.exe -language english -compress -cleanup mod -verbose

cd ..\mods\pml220
copy ..\..\zone\english\mod.ff

pause
