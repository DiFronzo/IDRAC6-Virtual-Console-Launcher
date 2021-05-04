# IDRAC 6 for Linux (Ubuntu)
#### (require that wget are installed)

1. <code>$git clone https://github.com/DiFronzo/IDRAC6-Virtual-Console-Launcher.git</code>
2. <code>$cd Linux</code>
3. Download JRE 7 server from Oracle (https://goo.gl/ma3Qu4) (Require a user account)
4. Exstract the JRE folder and put it in the original folder (see "File Structure").
5. <code>$chmod +x idrac.sh</code>
6. <code>$./idrac.sh</code>
6. Insert IP-address or Hostname of the IDRAC interface.
6. Insert port of the IDRAC interface. Blank for 5900.
7. Insert Username for IDRAC (same as Web Gui). Blank for root.
8. Insert Password for IDRAC (same as Web Gui). Blank for calvin.
9. Virtual Console should now start.
---
## File Structure

```javascript
|-- idrac.sh
|-- avctKVM.jar (idrac.sh downloads this file)
|-- JRE
    |-- (A lot of files under her)
```

---
## Q&A

* **Shell error after inserting "Host/IP"**

**Try downloading the file "avctKVM.jar" manually from https://IDRACIP:443/software/avctKVM.jar, and place the file like described under "File Structure". Or try using an IP-address rather then hostname.**

* **I want to help, what can i do?**

**Take a look at the main README-file and try to do some of the "To-do" taskes.**
