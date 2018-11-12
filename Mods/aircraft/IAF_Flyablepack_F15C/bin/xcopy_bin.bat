setlocal ENABLEEXTENSIONS
set KEY_NAME="HKEY_CURRENT_USER\Software\Eagle Dynamics\DCS World"
set VALUE_NAME=Path

FOR /F "usebackq skip=2 tokens=1-4" %%A IN (`REG QUERY %KEY_NAME% /v %VALUE_NAME% 2^>nul`) DO (
    set ValueName=%%A
    set ValueType=%%B
    set ValueValue=%%C %%D
)

if defined ValueName (
    @echo Value Name = %ValueName%
    @echo Value Type = %ValueType%
    @echo Value Value = %ValueValue%
	pause
	echo xcopy "%ValueValue%""\Mods\aircraft\Flaming Cliffs\bin\F15.dll" "%~dp0*.*"
	pause
	xcopy "%ValueValue%""\Mods\aircraft\Flaming Cliffs\bin\F15.dll" "%~dp0*.*"
	pause
) else (
    @echo "%KEY_NAME:"=%\%VALUE_NAME%" not found.
)

rem mklink F15.dll "C:\Games\DCS World\Mods\aircraft\Flaming Cliffs\bin\F15.dll"