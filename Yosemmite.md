OS X - Yosemite
===================================

# New confgiuration

## General

- + Use dark menu bar and Dock
    ```
$ defaults write NSGlobalDomain AppleInterfaceStyle Dark; killall Dock
$ killall Dock; killall SystemUIServer

$ defaults read NSGlobalDomain AppleInterfaceStyle
    ```

- + Default web browser (*no available command line)

## Mission Control

- + Dashboard
- - Automatically rerrange Spaces based on most recent use

## Securiy & Privary

### General

- + auto login
