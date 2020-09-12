
# IDRAC 6 VC for MacOS
Tested with MacOS Catalina 10.15.6 (19G2021)
1. <code>git clone https://github.com/DiFronzo/IDRAC6-Virtual-Console-Launcher</code>
2. <code>$cd MacOS</code>
3. <code>$chmod +x idrac.sh</code>
6. Insert IP-address or Hostname of the IDRAC interface.
6. Insert port of the IDRAC interface. Blank for 5900.
7. Insert Username for IDRAC (same as Web Gui). Blank for root.
8. Insert Password for IDRAC (same as Web Gui). Blank for calvin.
9. Virtual Console should now start.
---
## File Structure

```javascript
|-- idrac.sh
|-- lib
    |-- avctVM.jar
    |-- avctKVMIO.jar
|-- avctKVM.jar (idrac.sh can automatically download this)
|-- jre
    |-- (A lot of files under her)
```

---
## Q&A

* **I get the following error "Could not find or load main class com.avocent.idrac.kvm.Main" (or other java releated errors)**

Try downloading the file "avctKVM.jar" manually from https://IDRACIP:443/software/avctKVM.jar, and place the file like described under "File Structure". Or try using an IP address rather then hostname. Can also let the script download the file.

* **I get a SSL socket exception in Java**

Don't use special characters in the password or username

* **I want to help, what can i do?**

Take a look at the main README-file and try to do some of the "To-do" taskes.
