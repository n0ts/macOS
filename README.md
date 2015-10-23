OS X
===================================
Shell scripts for automated OS X machine setup.


Requirements
------------

### Platforms
- OS X 10.9 Mavericks
- OS X 10.10 Yosemite


Before Usage
----

- [Startup key combinations for Mach](https://support.apple.com/en-ap/HT201255)

1. Clean installing OS X via ONLINE or USB memory. 
  - Hold 'C' key during startup
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
  - Xcode (*required)
  etc...


Usage
-----

1. Open the Terminal.app

2. Run setup command
    ```
$ export HOSTNAME="[ MY HOSTNAME ]"
$ sudo xcodebuild -license
    ```

    ```
$ git clone https://github.com/n0ts/os-x.git
$ cd os-x
$ ./setup.sh
    ```

3. Geneerate GitHub [repo tokens](https://github.com/settings/tokens) and run boxen
    ``` 
$ export GITHUB_API_TOKEN=[token]
$ ./20-boxen.sh [--no-fde]
ENTER> GitHub account
    ```

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

## Finder Preferenes
- Slidebar: FAVORITES [$::boxen_user home directory]

## Set keyboard shortcut

- Select next source in input menu (*required reboot)
    ```
  $ open ~/Library/Preferences/com.apple.symbolichotkeys.plist

  AppleSymbolicHotKeys - new
    61 Dictionary > value > parameters > item 2 value 1572864 to 131072 (Shift)
    60 Dictionary > value > parameters > item 2 value 1048576 to 655360 (Option-Shift)
    ```

<img src="images/key_60.jpg">
<img src="images/key_61.jpg">


Other Configuration
-----

  - $HOME/.ssh
  - Background image
  - Other 3rd party software


Authors
-------------------
Author:: Naoya Nakazawa (<me@n0ts.org>)
