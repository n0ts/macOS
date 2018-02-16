macOS
===================================
Shell scripts for automated macOS machine setup.


Requirements
------------

### Support Platforms

- OS X 10.9 Mavericks
- OS X 10.10 Yosemite
- OS X 10.11 El Capitan
- macOS 10.12 Sierra
- *CURRENT* macOS 10.13 High Sierra


Before Usage
-----

1. Create bootable macOS installer to USB memory
    - [Startup key combinations for Mac](https://support.apple.com/en-ap/HT201255)

2. Clean installing macOS via ONLINE or USB memory
    - Hold 'option' key during startup and Select USB memory
    - Erase partition (Rename `Macintosh HD` volume name)

3. Enable FileVault. [System Preferences - FileVault - Turn On FileVault...]
    - Keep the recovery key
    - * [Software RAID is not support FileVault](http://support.apple.com/kb/ht4649).

4. for El Capitan or later, SIP partially disables. Enter recovery mode(%-R), run bellow command.
    ```
    $ csrutil enable --without debug
    $ reboot
    ```

5. Install Xcode from App Store

Usage
-----

1. Open the Terminal.app

2. Run setup command
    ```
    $ export HOSTNAME=<MY HOSTNAME>
    $ sudo xcodebuild -license
    * DO NOT INCLUDE HOSTNAME `.local`
    ```

    ```
    $ git clone https://github.com/n0ts/macOS.git
    $ cd macOS
    $ ./setup.sh
    ```

3. Run Boxen
    ```
    $ ./20-boxen.sh [--no-fde]
    ENTER> GitHub account
    ```
    - --no-fde: Don't require full disk encryption.

4. Open another terminal, Install applications from App Store
    ```
    $ source 30-mas.sh | bash
    ```

5. Quit the Terminal.app, open the iTerm.app
    ```
    $ boxen terminal
    ```

6. Open System Preferences - General - Allow apps all vendor (only HighSierra)

7. for Development, if necessary
    ```
    $ boxen [projects...]
    ```

8. Restart the macOS


Other Manual Configuration
-----

## System Preferences

### Mission Controll

- Spaces x 11

### Keyboard

- Key Repeat: Fastest
- Delay Until Repeat: Fastest

#### Keyboard Shortcut

- Select next source in input menu (*Required Reboot)
    ```
  $ open ~/Library/Preferences/com.apple.symbolichotkeys.plist

  AppleSymbolicHotKeys - new
    61 Dictionary > value > parameters > item 2 value 1572864 to 131072 (Shift)
    60 Dictionary > value > parameters > item 2 value 1048576 to 655360 (Option-Shift)
    ```

    <img src="images/key_60.jpg">
    <img src="images/key_61.jpg">

  - or [copy com.apple.symbolichotkeys.plist](com.apple.symbolichotkeys.plist) to `~/Library/Preferences/`

### Languages & Region

- Preferred Lanauges: Second Japanese
- 24-Hour Time: OFF

### Keyboard - Dictation

- Dictation: ON
- Language: English, Japanese

### Accessibility - Audio

- Flash the screen when an alert sound occurs: ON

### Date & Time
- Clock - Show date and time in menu bar: OFF


## Finder.app

- Sidebar: FAVORITES `$::boxen_user` home directory


## Mail.app

- General:
  - OFF: New Messages Sound, Play sounds for other mail actions
- Junk Mail:
  - ON: Enable junk mail filtering
- Composing:
  - Plain Text: Plain Text


## Other

- Energy Saver
  - Show battery status in menu bar: OFF
- Mission Control
  - Set application per Space
- Notifications
  - Applications
  - Widgets: customize it
- Desktop Background
- Dashboard
- Time Machine


3rd Applications
---

- ATOK
  - ATOK IMIKURU: DISABLE
  - Setup Cloud Service


Other Applications
-----

- SSH: Copy my $HOME/.ssh
- iTerm
  - Load preferences from a custom folder or URL: <My preference folder>
- Dropbox
- Resilio Sync
- 1Password
  - Import passwords (.opvault double-click it)
  - Preferences
    - Advanced:
      - Enable 3rd part app integrations: OFF
  - Install Browser Addons for Firefox, Chrome, Safari
  - And then: `boxen one_password`
- iStat Menus
  - Register
  - Import Settings
- MenuMeters
  - CPU, Disk, Network: OFF
  - Memory: Show paging activity indicator: ON
- Alfred
  - Activate Powerpack License
  - Advanced: Syncing set folder
  - Appearance
- TotalFinder
  - Registration
  - Dock: ALL ON
  - Menus: ALL ON
  - Visor, Activation Option + F
  - Sidebar: ALL ON
- Bartender
  - License
  - General:
    - Launch Bartender at Login: ON
    - Application Menu Items: Nothing or Hide
  - Configuration Active Menu Bar Items per Application
- VMware Fusion: Manually run `brew cask install vmware-fusion`
- Firefox (MultiFirefox)
  - Create profile
  - Sync
  - Import Bookmarks
- Chrome
  - Login my google account
- And Other All Applications


Authors
-------------------
Author:: Naoya Nakazawa (<me@n0ts.org>)
