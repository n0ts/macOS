macOS
===================================
Shell scripts for automated macOS machine setup.


Requirements
------------

### Support Platforms

- macOS Ventura


Usage
-----

1. Open the Terminal.app

2. Run setup script *MY HOSTNAME DO NOT INCLUDE HOSTNAME `.local`
    ```
    $ export HOSTNAME=<MY HOSTNAME>
    $ git clone https://github.com/n0ts/macOS.git
    $ cd macOS
    $ ./setup.sh
    ```

4. Restart the macOS


Manual Configuration
-----

## System Preferences

### Privacy & Seurity

- Allow accessories to connect: Always


### Mission Controll

- Spaces x 10


### Keyboard

- Key Repeat: Fastest
- Delay Until Repeat: Fastest


#### Keyboard Shortcut

- Copy keyboard shortcut file to  ~/Library/Preferences/
  - Detail configuration is [here](keyboard.md)
    ```
cp ~/Library/Preferences/com.apple.symbolichotkeys.plist ~/Library/Preferences/com.apple.symbolichotkeys.plist-orig
cp com.apple.symbolichotkeys.plist ~/Library/Preferences/com.apple.symbolichotkeys.plist
    ```
- Keyboard > Modifier Keys > Caps Lock Key -> ^ Control
- Dictation
  - Dictation: ON
  - Language: English, Japanese

* Required Reboot


### Languages & Region

- Preferred Languages: Second Japanese


### Control Center

- Clock
  - Clock options
    - Use a 24-Hour lock: OFF
- Battery
  - Show in Menu Bar: OFF

### Sound

- Play user interface sound effects: OFF
- Alert volume: +1


## Mail.app

- General:
  - Play sounds for other mail actions: OFF
- Composing:
  - Message format: Plain Text


