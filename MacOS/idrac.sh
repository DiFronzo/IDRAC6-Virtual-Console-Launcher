#!/bin/bash
read -p 'Host/IP: ' drachost
read -p 'Port [5900]: ' dracport
dracport=${dracport:-5900}

nc -z -v -w5 $drachost $dracport
result1=$?

if [  "$result1" != 0 ]; then
  echo  "Can't access port: $dracport!"
  return 1 2>/dev/null
  exit 1
fi

FILE=./avctKVM.jar
if [ ! -f "$FILE" ]; then
    curl -O --insecure --header 'Host: www.example.com' -I https://${drachost}:443/software/avctKVM.jar
fi

read -p 'Username [root]:' dracuser
dracuser=${dracuser:-root}
read -s -p 'Password [calvin]:' dracpassword
dracpassword=${dracpassword:-calvin}

./jre/bin/java -cp avctKVM.jar -Djava.library.path=./lib com.avocent.idrac.kvm.Main ip=$drachost kmport=$dracport vport=$dracport user=$dracuser passwd=$dracpassword apcp=1 version=2 vmprivilege=true "helpurl=https://${drachost}:443/help/contents.html"
