OS X
===================================
Shell scripts for automated OS X machine setup.


Requirements
------------

### Platforms
- OS X 10.9 Mavericks
- OS X 10.10 Yosemite
- OS X 10.11 El Capitan


Before Usage
-----

1. Clean installing OS X via ONLINE or USB memory.
  - Hold 'C' key during startup
  - Erase partation (Rename Macintosh HD volume name)
  - Create bootable installer via USB memory
  - [Startup key combinations for Mach](https://support.apple.com/en-ap/HT201255)
  -- Show Startup Manager: C Key

2. Enable FileVault. [System Preferences - FileVault - Turn On FileVault...]
  Keep the recovery key, Restart it.
  * Software RAID is not support FileVault.
  http://support.apple.com/kb/ht4649

3. Install Xcode from App Store

4. for El Capitan or later, SIP partially disables. Enter recovery mode(%-R), run bellow command.
  ```
$ csrutil enable --without debug
  ```

5. Reboot


Usage
-----

1. Open the Terminal.app

2. Run setup command
  ```
$ export HOSTNAME=<MY HOSTNAME>
$ sudo xcodebuild -license
  ```
  * DO NOT INCLUDE HOSTNAME `.local`

  ```
$ git clone https://github.com/n0ts/os-x.git
$ cd os-x
$ ./setup.sh
  ```

3. Run Boxen
  ```
$ ./20-boxen.sh [--no-fde]
ENTER> GitHub account
  ```
  - --no-fde: Don't require full disk encryption.

4. Quit the Terminal.app, open the iTerm2.app
  ```
$ boxen terminal
  ```

5. for Development, if necessary
  ```
$ boxen [projects...]
  ```

6. Restart the OS X


Other Manual Configuration
-----

## OS X System Preferences

### Mission Controll

- Spaces x 11
  - Spaces 1..10: Keyboard shortcut: % + [1..0]

### Languages & Region

- Japanese

### Dictation & Speech

- Diction On
- Language: English, Japanese

### Accessibility - Audio

- Flash the screen when an alert sound occurs

### Finder Preferenes

- Slidebar: FAVORITES `$::boxen_user` home directory

### Set keyboard shortcut

- Select next source in input menu (*required reboot)
    ```
  $ open ~/Library/Preferences/com.apple.symbolichotkeys.plist

  AppleSymbolicHotKeys - new
    61 Dictionary > value > parameters > item 2 value 1572864 to 131072 (Shift)
    60 Dictionary > value > parameters > item 2 value 1048576 to 655360 (Option-Shift)
    ```

<img src="images/key_60.jpg">
<img src="images/key_61.jpg">

  - or copy com.apple.symbolichotkeys.plist to ~/Library/Preferences/com.apple.symbolichotkeys.plist


Other Configuration
-----

- $HOME/.ssh
- Desktop Background
- Dashboard
- Application preferences
  - 1Password
  - iStat Menus
  - iTerm 2
    - Preferences - Load Preferences from a custom folder on URL
    - ~/Library/Preferences/com.googlecode.iterm2.plist
  - etc...


Authors
-------------------
Author:: Naoya Nakazawa (<me@n0ts.org>)
