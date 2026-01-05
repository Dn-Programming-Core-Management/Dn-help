@REM invoke this inside Dn-help/hlp
powershell -Command "(Get-Content changelog_shell.htm).Replace('<!-- INSERT-CHANGELOG-HERE -->', (pandoc ..\..\CHANGELOG.md -f gfm -t html5)) | Set-Content -encoding UTF8 changelog.htm"
