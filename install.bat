@setlocal enableextensions
@cd /d "%~dp0"

mkdir "%localappdata%\terminal"
copy "%cd%\terminal.ico" "%localappdata%\terminal"

REG ADD HKCR\Directory\Background\shell\terminal /t REG_SZ /d "Open Command Prompt Here" /f
REG ADD HKCR\Directory\Background\shell\terminal /v "Icon" /t REG_SZ /d "%LOCALAPPDATA%\terminal\terminal.ico" /f
REG ADD HKCR\Directory\Background\shell\terminal\command /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f

REG ADD HKCR\Directory\shell\terminal /t REG_SZ /d "Open Command Prompt Here" /f
REG ADD HKCR\Directory\shell\terminal /v "Icon" /t REG_SZ /d "%LOCALAPPDATA%\terminal\terminal.ico" /f
REG ADD HKCR\Directory\shell\terminal\command /t REG_SZ /d "cmd.exe /s /k pushd \"%%V\"" /f