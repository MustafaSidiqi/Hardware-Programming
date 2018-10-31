@echo off
set bin_path=C:\Modeltech_pe_edu_10.4a\win32pe_edu
call %bin_path%/vsim   -do "do {and2_simulate.do}" -l simulate.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
