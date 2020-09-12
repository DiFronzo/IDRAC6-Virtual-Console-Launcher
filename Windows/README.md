# IDRAC 6 VC for Windows
#### (require that PowerShell 2.0 is installed)

1. Download all the files and put them in a folder.
2. Make sure that the files is in the order that is described under "File Structure".
3. Download JRE 7 server from Oracle (https://goo.gl/ma3Qu4) (Require a user account, or create ☝️)
4. Exstract the JRE folder and put it in the orginal folder (see "File Structure").
5. Then run the file "run.bat".
6. Insert IP-address or Hostname of the IDRAC interface.
7. Insert Username for IDRAC (same as Web Gui). Blank for root.
8. Insert Password for IDRAC (same as Web Gui). Blank for calvin.
9. Virtual Console should now start.
---
## File Structure

```javascript
|-- run.bat
|-- lib
    |-- avctKVMIO.dll
    |--avmWinLib.dll
|-- avctKVM.jar (run.bat downloads this file)
|-- JRE
    |-- (A lot of files under her)
```

---
## Q&A

* **Powershell error after inserting "Host/IP"**

**Try downloading the file "avctKVM.jar" manually from https://IDRACIP:443/software/avctKVM.jar, and place the file like described under "File Structure". Or try using an IP-address rather then hostname.**

* **I want to help, what can i do?**

**Take a look at the main README-file and try to do some of the "To-do" taskes.**
