@echo off
set input=install\install
set output=install.zip
D:\tools\nsis\makensisw.exe LC2Navigator2025.nsi
REM C:\tools\nsis\makensisw.exe LC2Navigator2023install.nsi
REM zip -9 -m -o %output% %input%