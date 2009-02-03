CLS
@ECHO OFF
COLOR 70
MODE CON COLS=65 LINES=20
IF "%1" == "/n" Goto NoBackup
IF "%1" == "/N" Goto NoBackup

ECHO.
ECHO ----------------------------------------------------------------
ECHO   以下將自動安裝的軟體
ECHO   1. Windows 2000 SP4 之後的所有修正檔(包含備份系統檔)
ECHO   2. Internet Explorer 6 SP1 之後的所有修正檔(包含備份系統檔)
ECHO   3. Windows Media Player 9 之後的所有修正檔(包含備份系統檔)
ECHO.   
ECHO                                           更新日期：2009/01/26
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. 正在安裝 Windows 2000 SP4 之後的所有修正檔，請稍後...
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (w2ksp4\hotfix1\Windows2000*.exe) do start /wait %%i /passive /norestart
for %%i in (w2ksp4\hotfix1\WindowsMedia*.exe) do start /wait %%i /passive /norestart
start /wait w2ksp4\hotfix1\Windows-KB909520-v1.000-x86-CHT.exe /passive /norestart
start /wait w2ksp4\hotfix1\StepByStepInteractiveTraining-KB923723-x86-CHT.exe /passive /norestart
start /wait w2ksp4\hotfix1\WindowsInstaller-KB893803-v2-x86.exe /passive /norestart
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (w2ksp4\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      ├正在安裝 HotFix Type 3，請稍後...
for %%i in (w2ksp4\hotfix3\*.*) do start /wait %%i /passive /norestart
ECHO      ├正在安裝 HotFix Type 4，請稍後...
for %%i in (w2ksp4\hotfix4\*.exe) do start /wait %%i /Q
ECHO      ├正在安裝 Microsoft Update 元件，請稍後...
start /wait w2ksp4\hotfix5\WUSETUP.EXE /wuforce /quiet /norestart
xcopy w2ksp4\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
ECHO      安裝完成。
ECHO.
ECHO   2. 正在安裝 Internet Explorer 6 SP1 之後的所有修正檔，請稍後..
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (ie6sp1\hotfix1\*.exe) do start /wait %%i /passive /norestart
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (ie6sp1\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      ├正在安裝 HotFix Type 3，請稍後...
for %%i in (ie6sp1\hotfix3\*.exe) do start /wait %%i /passive /norestart
ECHO      安裝完成。
ECHO.
ECHO   3. 正在安裝 Windows Media Player 9 之後的所有修正檔，請稍後...
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (wmp9\hotfix1\*.exe) do start /wait %%i /passive /norestart
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (wmp9\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      安裝完成。
ECHO.
Goto End

:NoBackup
ECHO.
ECHO ----------------------------------------------------------------
ECHO   以下將自動安裝的軟體
ECHO   1. Windows 2000 SP4 之後的所有修正檔(將不備份系統檔)
ECHO   2. Internet Explorer 6 SP1 之後的所有修正檔(將不備份系統檔)
ECHO   3. Windows Media Player 9 之後的所有修正檔(將不備份系統檔)
ECHO.   
ECHO                                           更新日期：2009/01/26
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. 正在安裝 Windows 2000 SP4 之後的所有修正檔，請稍後...
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (w2ksp4\hotfix1\Windows2000*.exe) do start /wait %%i /passive /norestart /nobackup
for %%i in (w2ksp4\hotfix1\WindowsMedia*.exe) do start /wait %%i /passive /norestart /nobackup
start /wait w2ksp4\hotfix1\Windows-KB909520-v1.000-x86-CHT.exe /passive /norestart /nobackup
start /wait w2ksp4\hotfix1\StepByStepInteractiveTraining-KB923723-x86-CHT.exe /passive /norestart /nobackup
start /wait w2ksp4\hotfix1\WindowsInstaller-KB893803-v2-x86.exe /passive /norestart /nobackup
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (w2ksp4\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      ├正在安裝 HotFix Type 3，請稍後...
for %%i in (w2ksp4\hotfix3\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      ├正在安裝 HotFix Type 4，請稍後...
for %%i in (w2ksp4\hotfix4\*.exe) do start /wait %%i /Q
ECHO      ├正在安裝 Microsoft Update 元件，請稍後...
start /wait w2ksp4\hotfix5\WUSETUP.EXE /wuforce /quiet /norestart
xcopy w2ksp4\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
ECHO      安裝完成。
ECHO.
ECHO   2. 正在安裝 Internet Explorer 6 SP1 之後的所有修正檔，請稍後..
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (ie6sp1\hotfix1\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (ie6sp1\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      ├正在安裝 HotFix Type 3，請稍後...
for %%i in (ie6sp1\hotfix3\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      安裝完成。
ECHO.
ECHO   3. 正在安裝 Windows Media Player 9 之後的所有修正檔，請稍後...
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (wmp9\hotfix1\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (wmp9\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      安裝完成。
ECHO.
Goto End

:End
EXIT