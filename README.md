OS X
===================================
Shell scripts for automated OS X machine setup.


Requirements
------------
### Platforms
- OS X 10.9 Mavericks


Before Usage
----

1. Clean installing OS X via ONLINE or USB memory. 
  - Erase OS X partation (Rename Macintosh HD volune name)
  - USB Memory 
  - Creating a bootable OS X installer in OS X Mavericks
    (http://support.apple.com/kb/HT5856)
  -- Show Startup Manager : Option key http://support.apple.com/kb/ht1343

2. Enable FileVault. [System Preferences - FileVault - Turn On FileVault...]
  Keep the recovery key, Restart it.
  * Software RAID is not support FileVault.
  http://support.apple.com/kb/ht4649

3. Install some applications from App Store, and Upgrade components.
  - Xcode
  - Display Menu
  - Divvy
  - Growl
  - BetterSnapTol
  - Dash
  - Caffine
  - LimeChat
  - Evernote
  etc...

Finder Preferenes
- Slidebar: FAVORITES <boxen_user home directory>

Customize manually keyboard shortcut.

  "Select next source in input menu" (*required reboot)
  $ open ~/Library/Preferences/com.apple.symbolichotkeys.plist
  AppleSymbolicHotKeys
  61 > value > parameters > item 2 value 1572864 to 131072 (Shift)
  60 > value > parameters > item 2 value 1048576 to 655360 (Option-Shift)

  Uncheck
  "Select the previous input source"


Usage
-----

  1. Open the Terminal.app

  2. Run bellow command

```
  $ git clone https://github.com/n0ts/os-x.git
    * Install Command Line Developer Tools
  $ cd os-x
  $ export HOSTNAME="<my hostname>"
  $ ./01-hostname.sh
  $ ./10-xcode.sh
  $ ./20-boxen.sh
```

  3. Close the Terminal.app and Open the iTerm2.app
```
  $ boxen n0ts_terminal
```

  4. Restart machine

  5. Setup application and bellow command
```
  $ boxen n0ts_login_items
```


License and Authors
-------------------
Author:: Naoya Nakazawa (<me@n0ts.org>)
 