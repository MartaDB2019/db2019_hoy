@echo Off
echo .
echo . Starting VM
echo . . . . . . . . 
rem set INPUT=
rem set /P INPUT="VM name: "

"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm WXP --type headless
if %ERRORLEVEL% EQU 0 (
      echo Command executed successfully.
) else (
      echo Error executing command.
)

echo .
echo .  Esperando para conectarte a las unidades de red
echo . . . . . . . . . . .

timeout 3 /nobreak

start /min explorer c:

timeout 3 /nobreak

Taskkill /im explorer.exe
