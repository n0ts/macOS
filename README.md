macOS
===================================
Shell scripts for automated macOS machine setup.


Requirements
------------

### Platforms

- OS X 10.9 Mavericks
- OS X 10.10 Yosemite
- OS X 10.11 El Capitan
- macOS 10.12 Sierra


Before Usage
-----

1. Clean installing macOS via ONLINE or USB memory.
  - Hold 'C' key during startup
  - Erase partition (Rename Macintosh HD volume name)
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

4. Install applications from App Store
  ```
$ mas signin <Apple ID>
$ source 30-mas.sh | bash
  ```

5. Quit the Terminal.app, open the iTerm2.app
  ```
$ boxen terminal
  ```

6. for Development, if necessary
  ```
$ boxen [projects...]
  ```

7. Restart the macOS


Other Manual Configuration
-----

## System Preferences

### Mission Controll

- Spaces x 11
  - Spaces 1..10: Keyboard shortcut: % + [1..0]

### Keyboard

- [Fast] Key Repeat
- [Short] Delay Until Repeat
- Modifier Keys... Caps Lock Key: ^ Control

#### Keyboard shortcut

- Select next source in input menu (*required reboot)
    ```
  $ open ~/Library/Preferences/com.apple.symbolichotkeys.plist

  AppleSymbolicHotKeys - new
    61 Dictionary > value > parameters > item 2 value 1572864 to 131072 (Shift)
    60 Dictionary > value > parameters > item 2 value 1048576 to 655360 (Option-Shift)
    ```

<img src="images/key_60.jpg">
<img src="images/key_61.jpg">

  - or `copy com.apple.symbolichotkeys.plist` to `~/Library/Preferences/com.apple.symbolichotkeys.plist`

### Languages & Region

- Preferred lanauges: Second Japanese
- [OFF] 24-Hour Time

### Dictation & Speech

- Dictation On
- Language: English, Japanese

### Accessibility - Audio

- Flash the screen when an alert sound occurs

### Date & Time
- [OFF] Clock - Show date and time in menu bar


## Finder

- Sidebar: FAVORITES `$::boxen_user` home directory


## Mail

- General: [OFF] New Messages Sound, Play sounds for other mail actions
- Junk Mail: [ON] Enable junk mail filtering
- Composing: [Plain Text] Plain Text


## Other

- Energy Saver
  - [OFF] Show battery status in menu bar
- Mission Control
  - Set application per Space
- Notifications
  - Applications
  - Widgets: customize it
- Desktop Background
- Dashboard
- Timemachine


3rd Applications
---

- ATOK
  - Disable `ATOK IMIKURU`
  - Setup Cloud Service
  - Setup Environment


Other Applications
-----

- Dropbox
- Resilio Sync
- 1Password
  - Create a New Vault without iCloud Syncing
  - Preferences
    - Advanced: [OFF] Verify browser code signature
    - Sync: [Folder]
  - Import `n0ts.opvault` (double-click it)
  - Install Browser Addons (Firefox, Chrome, Safari)
- iStat Menus
  - Import Settings...
- MenuMeters
  - [OFF] CPU, Disk, Network
  - [ON] Memory, Show paging activity indicator
- iTerm
  - copy `com.googlecode.iterm2.plist` to `~/Library/Preferences/com.googlecode.iterm2.plist`
- Alfred
  - Show Alfred Preferences - Advanced - Set sync folder...
  - [CHANGE] Appearance
- TotalTerminal
  - Activation: Option + T
  - [OFF] Check for updates
- TotalFinder
  - Registration
  - [ALL ON] Dock
  - [ALL ON] Menus
  - [ON] Visor, Activation Option + F, Hide on ESC
  - [ALL ON] Sidebar
- Bartender
  - License
  - [ON] General: Launch Bartender at Login
  - [Nothing/Hide] Application Menu Items
- Firefox
  - Sync
  - Import Bookmarks
- SSH
- GPG2
- Other all applications


Authors
-------------------
Author:: Naoya Nakazawa (<me@n0ts.org>)
