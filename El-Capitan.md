OS X - El Capitan
===================================

# Create a Bootable USB Drive

   ```
$ sudo /Applications/Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia \
    --volume /Volumes/[VOLUME] \
    --applicationpath /Applications/Install\ OS\ X\ El\ Capitan.app \
    --nointeraction
   ```

# SIP

- Enter recovery mode(%-R), run bellow command.

   ```
$ csrutil enable --without debug
   ```

# New confgiuration

## Dashboard

## General

- + Automatically hide and show the menu bar

    ```
$ defaults write NSGlobalDomain _HIHideMenuBar -bool true
    ```
