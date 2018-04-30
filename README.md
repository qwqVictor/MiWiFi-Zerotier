# MiWiFi-Zerotier
Zerotier One for MiWiFi.

## Environment
My router: MiWiFi 3  
Firmware: MiWiFi OS 2.11.20 开发版  
Other: SSH  

Must move /usr/lib to /data/ and symbolic linked back, in order to get enough space **for MiWiFi 3**. (*I don't know whether it's needed for any other MiWiFi router.*)

## Usage
Change directory to this script's work directory, and then:  
```bash
sh install.sh
```
Then when it asks you your network id, input.  
All done.

