@echo off
set mypath=%cd%
set dracuser=none
set dracpwd=none

set /P drachost="Host/IP: "

nc -v -n -z -w 3 %drachost% 5900
IF %errorlevel%==0 goto cant 

if not exist %mypath%\avctKVM.jar (
powershell -Command "[Net.ServicePointManager]::ServerCertificateValidationCallback = {$true};(New-Object System.Net.WebClient).DownloadFile('https://%drachost%:443/software/avctKVM.jar', '%mypath%\avctKVM.jar')"
)

set /p dracuser="Username (root): "

IF %dracuser% EQU none (
set dracuser=root
)

set "psCommand=powershell -Command "$pword = read-host 'Enter Password (calvin)' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set dracpwd=%%p
IF %dracpwd% EQU none (
set dracpwd=calvin
)


%mypath%\jre\bin\java -cp avctKVM.jar -Djava.library.path=%mypath%\lib com.avocent.idrac.kvm.Main ip=%drachost% kmport=5900 vport=5900 user=%dracuser% passwd=%dracpwd% apcp=1 version=2 vmprivilege=true "helpurl=https://%drachost%:443/help/contents.html"

:cant
echo Can´t access port 5900!
@exit 0
