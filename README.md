# CrystalConky
A fork of Graphite Conky, which isn't on GitHub.  
This conky is a sidebar that shows various things such as :
  * System summary
    * host, uptime, battery %, Kernel version, and Filesystem.
  * Battery bar that changes color based on your battery's charge.
  * Clock
  * CPU Load (%, graphs, and bars)
  * Memory
  * Disks (removable and partitions.) comes with your primary part. by default.
  * WLAN load
  * Network info
  * Temperatures.
  
### Runtime Configuration Files

There's several versions of the config file, they're not meant to be run together.  Only one at a time.
The runtime configuration files are located in /config.

### startconky.sh
This file I wrote is meant to start conky including a config file from this repository.  It is here you write/specify the name of the rc file you want to use.  then you give the script execute permissions, and use it to run conky.  the rc files in this repository are only meant to be run alone, so only include the one you want in the script.

### CrystalConk.desktop
I created a .desktop entry so that you can run conky with the runtime configs found here, from your apps menu.  All you have to di is specify the path to startconky.sh, and the path to the icon (optional).  you can store the files anywhere, jsut make sure to change the execute entry to include the path.

The path on the .desktop file are *MY* paths.  in order to use it, you must edit the file.  It's simple, an excerpt of the desktop entry is as follows:
```
[Desktop Entry]
Categories=Utility;System;
Exec=sh "/home/user/Documents/conky/CrystalConk/config/startconky.sh"
Icon=/usr/share/pixmaps/conk.png
```
Categories: where the app is going to show up in your app drawers, you may change this to reflect your needs, or leave it
Exec= ...   : you must change this to put the path of startconky.sh on your machine.                                             
Icon= ...   : Change this path if you want to use the icon provided in this repo.  I suggest  `Icon=/usr/share/pixmaps/conk.png` as the entry.  then you need to put conk.png in /usr/share/pixmaps, which requires root.

Once you're done editing the desktop entry, put the file into /usr/share/applications.  it will then appear as an executable icon in your application drawers.

### Screenshots

rightrc                    |  rightrc2
:-------------------------:|:-------------------------:
![alt tag](https://github.com/reprise5/CrystalConky/blob/master/right-rc-Bildshirmfoto.png)  |  ![alt tag](https://github.com/reprise5/CrystalConky/blob/master/right-rc2-Bildschirmfoto.png)

    

### Notes:

**right-rc, v1.9.0**

right rc was written for my laptop with 4 cores.  It displays elements such as battery and wireless connection information that may be irrelevant on a desktop.  Edit this file to fit your needs, such as removing.duplicating code because your machine doesn't have 4 cores.

Not compatible with conky 1.10.0.

**right2-rc, v1.9.0**

right-rc2 was written for my office desktop.  it only has 2 cores, and the network device name is wlp0s2f1u2.  If the networking information won't display for you, it's because the code is looking at the wrong device.  run `ifconfig` to find your device, and replace every instance of wlp0s2f1u2 with your networking device name.  

domain and OS names are also hard coded.
Not compatible with conky 1.10.0.

**rightNew-rc, v1.10.0**

Written for my virtualbox and uses new syntax for runtime configurations.
compatible for conky 1.10.0



### REFERENCES

More about desktop entries: [freedesktop.org](https://standards.freedesktop.org/desktop-entry-spec/latest/).

More about conky Objects/variables: [conky.sourceforge.net](http://conky.sourceforge.net/variables.html).
