@echo off
set fileName=_validatefiles.csv
set vfileName=_v_validatedfiles.csv
set delfileName=_delvalidatedfiles.csv
REM 
dir /b plugins\*.zip > %fileName%
for /f "usebackq tokens=1-4 delims=|" %%a in ("%fileName%") do (
	LC2CRC32CLI.exe plugins\%%a > %~dp0plugins\%%~na%%~xa-crc.sfv
)
dir /b plugins\data\*.zip > %fileName%
for /f "usebackq tokens=1-4 delims=|" %%a in ("%fileName%") do (
	LC2CRC32CLI.exe plugins\data\%%a > %~dp0plugins\data\%%~na%%~xa-crc.sfv
)
dir /b plugins\media\*.zip > %fileName%
for /f "usebackq tokens=1-4 delims=|" %%a in ("%fileName%") do (
	LC2CRC32CLI.exe plugins\media\%%a > %~dp0plugins\media\%%~na%%~xa-crc.sfv
)
dir /b plugins\container\*.zip > %fileName%
for /f "usebackq tokens=1-4 delims=|" %%a in ("%fileName%") do (
	LC2CRC32CLI.exe plugins\container\%%a > %~dp0plugins\container\%%~na%%~xa-crc.sfv
)
dir /b plugins\lang\*.zip > %fileName%
for /f "usebackq tokens=1-4 delims=|" %%a in ("%fileName%") do (
	LC2CRC32CLI.exe plugins\lang\%%a > %~dp0plugins\lang\%%~na%%~xa-crc.sfv
)
dir /b plugins\tools\*.zip > %fileName%
for /f "usebackq tokens=1-4 delims=|" %%a in ("%fileName%") do (
	LC2CRC32CLI.exe plugins\tools\%%a > %~dp0plugins\tools\%%~na%%~xa-crc.sfv
)
echo done.