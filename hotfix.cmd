CLS
@ECHO OFF
COLOR 70
MODE CON COLS=65 LINES=20
IF "%1" == "/n" Goto NoBackup
IF "%1" == "/N" Goto NoBackup

ECHO.
ECHO ----------------------------------------------------------------
ECHO   �H�U�N�۰ʦw�˪��n��
ECHO   1. Windows 2000 SP4 ���᪺�Ҧ��ץ���(�]�t�ƥ��t����)
ECHO   2. Internet Explorer 6 SP1 ���᪺�Ҧ��ץ���(�]�t�ƥ��t����)
ECHO   3. Windows Media Player 9 ���᪺�Ҧ��ץ���(�]�t�ƥ��t����)
ECHO.   
ECHO                                           ��s����G2009/01/26
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. ���b�w�� Windows 2000 SP4 ���᪺�Ҧ��ץ��ɡA�еy��...
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (w2ksp4\hotfix1\Windows2000*.exe) do start /wait %%i /passive /norestart
for %%i in (w2ksp4\hotfix1\WindowsMedia*.exe) do start /wait %%i /passive /norestart
start /wait w2ksp4\hotfix1\Windows-KB909520-v1.000-x86-CHT.exe /passive /norestart
start /wait w2ksp4\hotfix1\StepByStepInteractiveTraining-KB923723-x86-CHT.exe /passive /norestart
start /wait w2ksp4\hotfix1\WindowsInstaller-KB893803-v2-x86.exe /passive /norestart
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (w2ksp4\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      �u���b�w�� HotFix Type 3�A�еy��...
for %%i in (w2ksp4\hotfix3\*.*) do start /wait %%i /passive /norestart
ECHO      �u���b�w�� HotFix Type 4�A�еy��...
for %%i in (w2ksp4\hotfix4\*.exe) do start /wait %%i /Q
ECHO      �u���b�w�� Microsoft Update ����A�еy��...
start /wait w2ksp4\hotfix5\WUSETUP.EXE /wuforce /quiet /norestart
xcopy w2ksp4\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
ECHO      �w�˧����C
ECHO.
ECHO   2. ���b�w�� Internet Explorer 6 SP1 ���᪺�Ҧ��ץ��ɡA�еy��..
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (ie6sp1\hotfix1\*.exe) do start /wait %%i /passive /norestart
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (ie6sp1\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      �u���b�w�� HotFix Type 3�A�еy��...
for %%i in (ie6sp1\hotfix3\*.exe) do start /wait %%i /passive /norestart
ECHO      �w�˧����C
ECHO.
ECHO   3. ���b�w�� Windows Media Player 9 ���᪺�Ҧ��ץ��ɡA�еy��...
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (wmp9\hotfix1\*.exe) do start /wait %%i /passive /norestart
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (wmp9\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      �w�˧����C
ECHO.
Goto End

:NoBackup
ECHO.
ECHO ----------------------------------------------------------------
ECHO   �H�U�N�۰ʦw�˪��n��
ECHO   1. Windows 2000 SP4 ���᪺�Ҧ��ץ���(�N���ƥ��t����)
ECHO   2. Internet Explorer 6 SP1 ���᪺�Ҧ��ץ���(�N���ƥ��t����)
ECHO   3. Windows Media Player 9 ���᪺�Ҧ��ץ���(�N���ƥ��t����)
ECHO.   
ECHO                                           ��s����G2009/01/26
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. ���b�w�� Windows 2000 SP4 ���᪺�Ҧ��ץ��ɡA�еy��...
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (w2ksp4\hotfix1\Windows2000*.exe) do start /wait %%i /passive /norestart /nobackup
for %%i in (w2ksp4\hotfix1\WindowsMedia*.exe) do start /wait %%i /passive /norestart /nobackup
start /wait w2ksp4\hotfix1\Windows-KB909520-v1.000-x86-CHT.exe /passive /norestart /nobackup
start /wait w2ksp4\hotfix1\StepByStepInteractiveTraining-KB923723-x86-CHT.exe /passive /norestart /nobackup
start /wait w2ksp4\hotfix1\WindowsInstaller-KB893803-v2-x86.exe /passive /norestart /nobackup
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (w2ksp4\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      �u���b�w�� HotFix Type 3�A�еy��...
for %%i in (w2ksp4\hotfix3\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      �u���b�w�� HotFix Type 4�A�еy��...
for %%i in (w2ksp4\hotfix4\*.exe) do start /wait %%i /Q
ECHO      �u���b�w�� Microsoft Update ����A�еy��...
start /wait w2ksp4\hotfix5\WUSETUP.EXE /wuforce /quiet /norestart
xcopy w2ksp4\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
ECHO      �w�˧����C
ECHO.
ECHO   2. ���b�w�� Internet Explorer 6 SP1 ���᪺�Ҧ��ץ��ɡA�еy��..
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (ie6sp1\hotfix1\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (ie6sp1\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      �u���b�w�� HotFix Type 3�A�еy��...
for %%i in (ie6sp1\hotfix3\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      �w�˧����C
ECHO.
ECHO   3. ���b�w�� Windows Media Player 9 ���᪺�Ҧ��ץ��ɡA�еy��...
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (wmp9\hotfix1\*.exe) do start /wait %%i /passive /norestart /nobackup
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (wmp9\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      �w�˧����C
ECHO.
Goto End

:End
EXIT