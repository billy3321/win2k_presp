CLS
@ECHO OFF
COLOR 70
MODE CON COLS=80 LINES=25
if not exist wget.exe goto error
if not exist hotfix.cmd goto error
ECHO -------------------------------------------------------------------------------
ECHO     (偽) Windows 2000 Pre-SP5 自動建立程式
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO     說明：這是用來自動產生 (偽) Windows 2000 Pre-SP5 的批次檔。
ECHO           執行這個批次檔就會自動從微軟網站下載更新檔，
ECHO           並按照 (偽) Windows 2000 Pre-SP5 的格式自動產生安裝檔。
ECHO           請確定您已經連接 1Mb 以上的寬頻網路，下載時間大約為
ECHO           10~30 分鐘不等，請耐心等候。
ECHO.
ECHO     系統需求：                          
ECHO           1. Windows 2000 Service Pack 4     
ECHO           2. Internet Explorer 6.0 SP1  
ECHO           3. Windows Media Player 9.0         
ECHO.     
ECHO     ┌──────────────────────────────────┐
ECHO     │                       請按任意鍵開始下載！                         │
ECHO.    └──────────────────────────────────┘ 
ECHO.
ECHO.
ECHO.
ECHO     其他更詳細的說明請見 http://www.threesecond.info/    更新日期：2009/01/26
ECHO -------------------------------------------------------------------------------
pause
CLS
ECHO -------------------------------------------------------------------------------
ECHO   開始下載檔案.....
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO   0. 正在建立安裝目錄，請稍後...
if exist build.log del /Q build.log
if exist w2ksp5v2\ rmdir /S /Q w2ksp5v2\
md w2ksp5v2\w2ksp4\hotfix1\
md w2ksp5v2\w2ksp4\hotfix2\
md w2ksp5v2\w2ksp4\hotfix3\
md w2ksp5v2\w2ksp4\hotfix4\
md w2ksp5v2\w2ksp4\hotfix5\
md w2ksp5v2\ie6sp1\hotfix1\
md w2ksp5v2\ie6sp1\hotfix2\
md w2ksp5v2\ie6sp1\hotfix3\
md w2ksp5v2\wmp9\hotfix1\
md w2ksp5v2\wmp9\hotfix2\
move /y wget.exe %WINDIR%\System32\ > nul
move /y hotfix.cmd w2ksp5v2\ > nul
ECHO.
ECHO   1. 正在下載 Windows 2000 SP4 之後的所有修正檔，請稍後...
ECHO      ├正在下載 HotFix Type 1，請稍後...
wget -abuild.log http://download.microsoft.com/download/b/d/d/bdd00685-c281-49fb-a043-6f12b31aa409/Windows2000-KB901214-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/1/6/5/165be15c-2abc-4b14-9d79-d9cda777d543/Windows2000-KB842773-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/9/b/f/9bfb624e-5adb-4efb-ae99-ad129ca5839a/Windows2000-KB891861-v2-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/e/6/0/e60c0d19-8cd8-4924-900d-a23f8bc702d7/Windows2000-KB893756-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/b/d/8/bd840029-8592-4bfa-8cc2-bb8382cf1429/Windows2000-KB896358-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/8/2/5/825a7e2a-769b-4c76-8db0-276b3facdc4c/Windows2000-KB896422-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/1/2/7/1275b6ff-4154-469d-b5f6-e9850a7390b2/Windows2000-KB896423-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/2/0/8/2086a75f-a4c9-413d-b616-5151115a626b/Windows2000-KB899587-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/4/c/a/4ca3def5-d89b-4730-a236-930e7070d8d4/Windows2000-KB905749-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/0/6/9/0696f3f3-cf42-4d93-ada5-79bf543cd403/Windows2000-KB900725-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/b/7/9/b7935b1a-a10e-4e1c-b849-468304318d74/Windows2000-KB901017-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/1/9/5/195fd61f-a3d3-42f3-9779-1b2e205a39db/Windows2000-KB905414-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/c/8/e/c8ec498a-127f-463d-a6da-61d5390fcf60/Windows2000-KB899589-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/f/e/0/fe0d2a8d-ec03-4968-8e6f-d2109175f429/Windows-KB909520-v1.000-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/b/f/2/bf25b2c1-54ed-449b-90e7-573e6307821f/Windows2000-KB894395-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/c/5/a/c5a79840-aca8-47f0-8dd0-8be2ee6084f3/Windows2000-KB908519-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/a/d/d/add9c4ce-abbc-4fdd-b8c6-10a59e9c1d44/Windows2000-KB913580-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/d/6/f/d6f142cd-450a-48d3-8dd9-0877c4099a11/Windows2000-KB908531-v2-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/d/2/b/d2b25bda-31ea-475e-ac8e-4433e3fea256/Windows2000-KB917537-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/3/e/1/3e19863e-4f53-488e-95fa-0502c1454790/Windows2000-KB914388-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/6/6/5/665a6763-9aca-4252-bd9b-cc7c8003b16a/Windows2000-KB911280-v2-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/2/6/a/26a7378f-a1f8-4fa7-a571-6adecaa2da4c/Windows2000-KB920683-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/2/8/7/287bb70a-48fb-40e9-8937-60440cb1240b/Windows2000-KB917008-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/0/c/6/0c6de93f-adc3-4349-b578-fcc687c29221/Windows2000-KB921398-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/3/0/b/30ba9f48-d4e5-4237-94b4-2d14ce2237c2/Windows2000-KB920670-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/c/7/b/c7b3cf51-2015-4333-ac31-de62f4b71482/Windows2000-KB920685-x86-CHT.EXE    
wget -abuild.log http://download.microsoft.com/download/9/2/6/9266789f-a624-4ad3-933b-2c5ee73d7411/Windows2000-KB922582-x86-CHT.EXE    
wget -abuild.log http://download.microsoft.com/download/0/4/8/04833080-8926-41b4-95ff-059abcc46a54/Windows2000-KB923191-x86-CHT.EXE    
wget -abuild.log http://download.microsoft.com/download/b/9/9/b99b6094-2e44-4a34-9f6f-a92dbd24621d/Windows2000-KB920958-v2-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/0/4/2/042d74ca-eed5-4aa6-8a89-8c2c66cec038/Windows2000-KB925308-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/f/8/b/f8b5b12f-624e-446d-a369-660c77bea271/Windows2000-KB923980-x86-CHT.EXE 
wget -abuild.log http://download.microsoft.com/download/a/b/d/abd4db02-1b15-4826-8033-3e6f74e50a6b/Windows2000-KB920213-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/3/e/6/3e621c7f-0e2e-4b85-91cc-34006195ca46/Windows2000-KB924867-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/7/0/e/70e6b347-366e-4837-999d-89fe49892674/Windows2000-KB924270-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/2/d/6/2d699021-77cc-4e40-ac47-922f70162b15/Windows2000-KB926247-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/b/e/1/be1c8123-8c2e-4163-bc94-3589dc89b8fb/Windows2000-KB926121-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/7/d/a/7da404b0-ed4e-48eb-8eb0-6531e6487548/Windows2000-KB839228-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/5/4/4/54411b69-1fa4-4ff1-918e-5675e06c9525/Windows2000-KB924432-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/b/4/5/b4548e97-fe83-4be0-9ba4-b335d0b5b51f/StepByStepInteractiveTraining-KB923723-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/a/3/c/a3c3d9fa-f598-4722-bb48-58dbe98114ba/Windows2000-KB928843-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/8/9/1/89154d96-b219-43a6-adbb-2ea8c883bcf2/Windows2000-KB926436-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/a/3/4/a349dad7-06e2-4226-ad88-a95cf78895a8/Windows2000-KB924667-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/b/7/b/b7b54c23-052a-45b8-9644-a3eeab781338/Windows2000-KB918118-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/8/6/c/86ce9b67-4983-4596-9c91-23d74c6b0916/Windows2000-KB925902-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/c/5/0/c5082c21-5ac5-40d7-9002-f93763f1a65a/Windows2000-KB930178-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/5/2/4/5240d37f-0537-415d-a4ea-0b99736a41a6/Windows2000-KB931784-x86-CHT.EXE   
wget -abuild.log http://download.microsoft.com/download/0/b/1/0b11632d-42a2-41f4-b8d1-100df6adf847/Windows2000-KB935840-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/8/4/f/84f34464-dbca-4699-b24c-8ea6a17a59a3/Windows2000-KB935839-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/1/4/7/147ded26-931c-4daf-9095-ec7baf996f46/WindowsInstaller-KB893803-v2-x86.exe
wget -abuild.log http://download.microsoft.com/download/6/f/c/6fc90ffc-5ab9-4ea0-8b15-bd8ff6c87427/WindowsMedia-KB911564-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/c/a/7/ca76f225-654f-4be3-9e2e-6e840bc7f94a/Windows2000-KB938827-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/0/a/4/0a4a110d-9e32-4c43-bb03-19b3e9daa107/WindowsMedia6-KB925398-v2-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/1/5/4/154076b3-3ffe-4fd6-9d17-fa6ecc79530d/Windows2000-KB923810-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/9/1/c/91c062b8-1b0b-44e5-9c00-d511ced442da/Windows2000-KB933729-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/4/7/a/47a64c8c-80d3-42a4-ae1b-638f744f92dd/Windows2000-KB941644-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/b/1/8/b1884db8-8742-4a5b-8165-89340f92b140/Windows2000-KB943485-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/8/4/a/84ad3a54-2637-4200-b410-235b04ad723d/Windows2000-KB926122-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/c/2/4/c2473bfb-b574-40b4-ace5-b0b009991e35/Windows2000-KB942831-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/3/f/6/3f62587a-d8cc-4e20-bf9a-b318d21c8975/Windows2000-KB943055-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/a/a/1/aa1a10ea-01fb-4304-9aad-b204d3f8d915/Windows2000-KB948590-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/0/d/2/0d2f2f1e-1b4c-49c6-a81a-20ff34ec734b/Windows2000-KB944338-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/d/5/4/d54f86c5-579d-4db0-9a66-d2a9eb3dbdde/Windows2000-KB945553-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/5/e/6/5e658717-f6cc-4230-82d5-eacdda3f7aa2/Windows2000-KB950749-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/6/c/c/6cc9b149-1dd7-4679-aeef-6bf7aab7b0c7/Windows2000-KB950760-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/b/3/8/b38e99e2-73e1-4699-b5d4-25bb919cb7f4/Windows2000-KB951748-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/c/f/5/cf557165-3948-44ab-91d6-c1f6fb492be2/Windows2000-KB955417-x86-CHT.EXE 
wget -abuild.log http://download.microsoft.com/download/2/9/7/2978dc13-6013-4f59-bd4c-84d3fc3d11f0/Windows2000-KB952954-x86-CHT.EXE 
wget -abuild.log http://download.microsoft.com/download/e/4/e/e4e2beb5-10de-41a9-a1aa-45e719d8e3a2/Windows2000-KB950974-x86-CHT.EXE 
wget -abuild.log http://download.microsoft.com/download/c/8/7/c87b92c7-b6bf-4e52-8012-d33f53b003b4/Windows2000-KB953839-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/9/7/d/97d17d5f-e0d0-432e-9566-c21cc68a306a/Windows2000-KB954211-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/f/5/b/f5b30aea-5c3a-4fdf-8601-f0e737e2e096/Windows2000-KB953155-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/7/a/5/7a50f914-6649-4b04-8613-b52a0f0d16d0/Windows2000-KB951071-x86-CHT.EXE 
wget -abuild.log http://download.microsoft.com/download/5/b/3/5b30c436-eed7-465a-96df-f1b5361f5496/Windows2000-KB958644-x86-CHT.EXE 
wget -abuild.log http://download.microsoft.com/download/9/d/5/9d5f55f6-86a3-42de-a864-c25b5c7ad187/Windows2000-KB956391-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/7/8/9/789d606a-693e-47fb-b2f4-8f5307336fad/Windows2000-KB955069-x86-CHT.EXE 
wget -abuild.log http://download.microsoft.com/download/b/4/6/b4653ed5-f152-4e17-b259-cd6e1405dd27/Windows2000-KB957097-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/5/9/F/59F5F07F-1D6E-48B0-818E-F1D9D89CB655/Windows2000-KB956802-x86-CHT.EXE             
wget -abuild.log http://download.microsoft.com/download/D/8/C/D8C3171D-7A19-4FD5-A2DF-5E77249884FF/WindowsMedia64-KB954600-x86-CHT.exe   
wget -abuild.log http://download.microsoft.com/download/1/B/A/1BAA309C-6264-43E1-A77A-9CA711057D93/Windows2000-KB958687-x86-CHT.EXE        
move /y *.exe w2ksp5v2\w2ksp4\hotfix1\ > nul
ECHO      ├正在下載 HotFix Type 2，請稍後...
wget -abuild.log http://download.microsoft.com/download/5/a/d/5ad868a0-8ecd-4bb0-a882-fe53eb7ef348/VB6.0-KB290887-X86.exe
wget -abuild.log http://download.microsoft.com/download/2/0/6/2064287C-65A7-4AA9-9A38-E0FBB67FFAE1/rootsupd.exe
VB6.0-KB290887-X86.exe /Q /T:%TEMP%
del /q /f VB6.0-KB290887-X86.exe > nul
move /y %TEMP%\vbrun60sp6.exe w2ksp5v2\w2ksp4\hotfix2\ > nul
move /y *.exe w2ksp5v2\w2ksp4\hotfix2\ > nul
ECHO      ├正在下載 HotFix Type 3，請稍後...
wget -abuild.log http://download.microsoft.com/download/8/d/9/8d97a8eb-bc20-4122-bded-f80f1199d93f/Windows2000-KB935843-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/2/8/c/28c00830-abfd-44a0-949d-cbda8ec1063c/Windows2000-KB927891-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/5/0/c/50c264da-fbfe-4d09-967a-740bc2614616/msxml4-KB954430-cht.exe    
wget -abuild.log http://download.microsoft.com/download/e/7/b/e7bc075f-8236-4a5a-81e7-1a032044826d/msxml6-KB954459-cht-x86.exe
move /y *.exe w2ksp5v2\w2ksp4\hotfix3\ > nul
ECHO      ├正在下載 HotFix Type 4，請稍後...
wget -abuild.log http://download.microsoft.com/download/4/a/a/4aa524c6-239d-47ff-860b-5b397199cbf8/windows-kb890830-v2.6.exe
move /y *.exe w2ksp5v2\w2ksp4\hotfix4\ > nul
ECHO      ├正在下載 Windows Update Agent，請稍後...
wget -abuild.log http://download.windowsupdate.com/windowsupdate/redist/standalone/7.2.6001.788/windowsupdateagent30-x86.exe
windowsupdateagent30-x86.exe /Q /X:w2ksp5v2\w2ksp4\hotfix5
wget -abuild.log http://update.microsoft.com/microsoftupdate/v6/V5Controls/en/x86/client/muweb_site.cab
extrac32 /y muweb_site.cab muweb.dll
del /q /f *.cab > nul
del /q /f *.exe > nul
move /y *.dll w2ksp5v2\w2ksp4\hotfix5\ > nul
for %%i in (ar cs da de el es fi fr he hu it ja ko nl no pl pt ptbr ru sv tr zhcn) do (
rd /q /s w2ksp5v2\w2ksp4\hotfix5\%%i > nul
del /q /f w2ksp5v2\w2ksp4\hotfix5\*.mui_%%i > nul
del /q /f w2ksp5v2\w2ksp4\hotfix5\wuauhelp.chm_%%i > nul  
)
ECHO      下載完成。
ECHO.
ECHO   2. 正在下載 Internet Explorer 6 SP1 之後的所有修正檔，請稍後..
ECHO      ├正在下載 HotFix Type 1，請稍後...
wget -abuild.log http://download.microsoft.com/download/8/1/3/813fb309-ab6c-401e-bc92-82532de98bd9/IE6.0sp1-KB905495-Windows2000-x86-CHT.EXE
wget -abuild.log http://download.microsoft.com/download/5/f/0/5f0bc37a-cf2c-4d99-a596-d5f847da7cbf/IE6.0sp1-KB918439-Windows-2000-XP-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/a/5/9/a59fccbe-8977-41d5-8945-b37234c52616/OE6.0sp1-KB951066-Windows2000-x86-CHT.exe     
wget -abuild.log http://download.microsoft.com/download/f/7/8/f78129bf-9723-4b2a-9c11-072cb0fc66b7/IE6.0sp1-KB938464-Windows2000-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/0/7/5/07574905-F41C-4850-957E-60560A48EE8D/IE6.0sp1-KB958215-Windows2000-x86-CHT.exe 
wget -abuild.log http://download.microsoft.com/download/D/E/D/DED53EE4-6169-449D-B0E8-740B688E3807/IE6.0sp1-KB960714-Windows2000-x86-CHT.exe 
move /y *.exe w2ksp5v2\ie6sp1\hotfix1\ > nul
ECHO      ├正在下載 HotFix Type 2，請稍後...
wget -abuild.log http://download.microsoft.com/download/1/7/1/17115a2c-8493-4947-bb7d-d7b58457acf7/CAPICOM-KB931906-v2102.exe
move /y *.exe w2ksp5v2\ie6sp1\hotfix2\ > nul
ECHO      ├正在下載 HotFix Type 3，請稍後...
move /y *.exe w2ksp5v2\ie6sp1\hotfix3\ > nul
ECHO      下載完成。
ECHO.
ECHO   3. 正在下載 Windows Media Player 9 之後的所有修正檔，請稍後...
ECHO      ├正在下載 HotFix Type 1，請稍後...
wget -abuild.log http://download.microsoft.com/download/f/5/6/f56f9208-4fa8-4ab9-a40b-4eb2f7891a8e/WindowsMedia9-KB936782-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/9/7/3/973be9ad-0ae7-4465-9196-18de0e3ec124/Windows2000-KB941569-x86-CHT.exe
wget -abuild.log http://download.microsoft.com/download/2/2/2/222FFAAA-3F35-451A-AE65-7E1F955133D1/Windows2000-WindowsMedia-KB952069-x86-CHT.exe
move /y *.exe w2ksp5v2\wmp9\hotfix1\ > nul
ECHO      下載完成。
ECHO.
ECHO.
CLS
ECHO -------------------------------------------------------------------------------
ECHO     檔案下載完成！
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO     說明：(偽) Windows 2000 Pre-SP5 所有檔案已下載完成。
ECHO           您可在這個目錄下找到 w2ksp5v2，您只要將此目錄複製到您所要更新的電腦，
ECHO           並執行 hotfix.cmd 即可開始安裝 (偽) Windows 2000 Pre-SP5。
ECHO.
ECHO           原始的 build.cmd 和 wget.exe，您可自行刪除。
ECHO.           
ECHO           另外，這個目錄下會產生記錄檔 build.log，這是下載檔案的完整記錄，
ECHO           您可以開啟這個檔案檢查下載記錄，按下任意鍵後可關閉本程式。
ECHO.
ECHO.
ECHO.
ECHO     ┌──────────────────────────────────┐
ECHO     │                       請按任意鍵關閉程式！                         │
ECHO.    └──────────────────────────────────┘ 
ECHO.     
ECHO.
ECHO.
ECHO     其他更詳細的說明請見 http://www.threesecond.info/
ECHO -------------------------------------------------------------------------------
pause
move /y %WINDIR%\System32\wget.exe > nul
explorer "http://www.threesecond.info/v2/modules/xhnewbb/viewtopic.php?topic_id=357"
goto end

:error
CLS
ECHO -------------------------------------------------------------------------------
ECHO     找不到必要的檔案！
ECHO -------------------------------------------------------------------------------
ECHO.
ECHO     說明：您正在執行的 (偽) Windows 2000 Pre-SP5 自動建立程式
ECHO           缺少必要的執行檔，請確認您是否有完整的檔案，
ECHO           或是重新下載 (偽) Windows 2000 Pre-SP5 自動建立程式。
ECHO.
ECHO           本程式即將關閉。
ECHO.         
ECHO.         
ECHO.         
ECHO.         
ECHO.
ECHO.
ECHO     ┌──────────────────────────────────┐
ECHO     │                       請按任意鍵關閉程式！                         │
ECHO.    └──────────────────────────────────┘ 
ECHO.     
ECHO.
ECHO.
ECHO     其他更詳細的說明請見 http://www.threesecond.info/
ECHO -------------------------------------------------------------------------------
pause
goto end

:end
exit
