@Echo Off
Title С�Ǻ���ɫ�氲װ����by��ˮţ
Pushd %~dp0
If "%PROCESSOR_ARCHITECTURE%"=="AMD64" (Set a="WeaselSetupx64.exe"&Set b=%SystemRoot%\SysWOW64) Else (Set a="WeaselSetup.exe"&Set b=%SystemRoot%\system32)
Rd "%b%\test_permission_sununs" >nul 2>nul
Md "%b%\test_permission_sununs" 2>nul||(Echo ��ʹ���Ҽ�����Ա�������&&Pause >nul&&Exit)
Rd "%b%\test_permission_sununs" >nul 2>nul
Reg Add "HKCU\Software\Rime\Weasel" /v RimeUserDir /d "%~dp0usr" /f&CLS
"%~dp0weasel\%a%" /i
"%~dp0weasel\WeaselDeployer.exe" /install
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""%~dp0"") & ""ݔ�뷨�O��.lnk""):b.TargetPath=""%~dp0weasel\WeaselDeployer.exe"":b.WorkingDirectory=""%~dp0weasel\"":b.IconLocation=""%SystemRoot%\system32\shell32.dll,21"":b.Save:close")
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""%~dp0"") & ""�Ñ��~�����.lnk""):b.TargetPath=""%~dp0weasel\WeaselDeployer.exe"":b.Arguments=""/dict"":b.WorkingDirectory=""%~dp0weasel\"":b.IconLocation=""%SystemRoot%\system32\shell32.dll,6"":b.Save:close")
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""%~dp0"") & ""���²���.lnk""):b.TargetPath=""%~dp0weasel\WeaselDeployer.exe"":b.Arguments=""/deploy"":b.WorkingDirectory=""%~dp0weasel\"":b.IconLocation=""%SystemRoot%\system32\shell32.dll,144"":b.Save:close")
mshta VBScript:Msgbox("��װ���",vbSystemModal,"")(close)