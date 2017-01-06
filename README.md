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
  
###Runtime Configuration Files

There's several versions of the config file, they're not meant to be run together.  Only one at a time.
The runtime configuration files are located in /config.

###startconky.sh
This file I wrote is meant to start conky including a config file from this repository.  It is here you write/specify the name of the rc file you want to use.  then you give the script execute permissions, and use it to run conky.  the rc files in this repository are only meant to be run alone, so only include the one you want in the script.

###CrystalConk.desktop
I created a .desktop entry so that you can run conky with the runtime configs found here, from your apps menu.  All you have to di is specify the path to startconky.sh, and the path to the icon (optional).  you can store the files anywhere, jsut make sure to change the execute entry to include the path.

The path on the .desktop file are *MY* paths.  in order to use it, you must edit the file.  It's simple, an excerpt of the desktop entry is as follows:
```
[Desktop Entry]
Categories=Utility;System;
Exec=sh "/home/reprise/conkyScripts/CrystalConk/config/startconky.sh"
Icon=/home/reprise/Dropbox/3 Photos/Shortcut Icons/conk.png
```
Categories: where the app is going to show up in your app drawers, you may change this to reflect your needs, or leave it

Exec= ...   : you must change this to put the path of startconky.sh on your machine.                                             
Icon= ...   : Change this path if you want to use the icon provided in this repo.  I suggest  `Icon=/usr/share/pixmaps/conk.png` as the entry.  then you need to put conk.png in /usr/share/pixmaps, which requires root.

Once you're done editing the desktop entry, put the file into /usr/share/applications.  it will then appear as an executable icon in your application drawers.

More about desktop entries are on [freedesktop.org](https://standards.freedesktop.org/desktop-entry-spec/latest/).

### Screenshots

#####rightrc

![alt tag](https://github.com/reprise5/CrystalConky/blob/master/rightrc-screenshot.png)
