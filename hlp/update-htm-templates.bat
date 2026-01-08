@REM invoke this inside Dn-help/hlp
@echo off
pandoc ..\..\CHANGELOG.md -f gfm -t html5 > temp.txt
python ..\htm-patcher.py changelog-template.htm changelog.htm temp.txt "PATCH HERE PLEASE"
del temp.txt
pandoc ..\..\LICENSE.md -f gfm -t html5 > temp.txt
python ..\htm-patcher.py license-template.htm license_temp1.htm temp.txt "PATCH HERE FIRST"
del temp.txt
pandoc ..\..\Source\drivers\asm\LICENSE.md -f gfm -t html5 > temp.txt
python ..\htm-patcher.py license_temp1.htm license_temp2.htm temp.txt "PATCH HERE SECOND"
del temp.txt
python ..\htm-patcher.py license_temp2.htm license.htm ..\..\LICENSE-GPLv3.txt "PATCH HERE THIRD"
del license_temp1.htm
del license_temp2.htm
