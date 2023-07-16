#!/bin/bash

# ActivityMonitor
defaults write com.apple.ActivityMonitor IconType cpu
defaults write com.apple.ActivityMonitor ShowCategory -int 0
defaults write com.apple.ActivityMonitor OpenMainWindow -int 1
defaults write com.apple.ActivityMonitor SortColumn CPUUsage
defaults write com.apple.ActivityMonitor SortDirection -int 0

# AirDrop
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -int 1

# App Store
defaults write com.apple.appstore WebKitDeveloperExtras -bool true
defaults write com.apple.appstore ShowDebugMenu -bool true
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1
defaults write com.apple.SoftwareUpdate ConfigDataInstall -int 1
defaults write com.apple.commerce AutoUpdate -bool true
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true

# Calendar
defaults write com.apple.iCal 'n days of week' 7
defaults write com.apple.iCal 'first day of week' -bool false
defaults write com.apple.iCal 'Show time in Month View' -bool true
defaults write com.apple.iCal 'TimeZone support enabled' -bool true
defaults write com.apple.iCal 'Show Week Numbers' -bool true

# Chrome
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true

# Contacts
defaults write com.apple.AddressBook ABDefaultAddressCountryCode us
defaults write com.apple.AddressBook ABNameDisplay 1
defaults write com.apple.AddressBook ABNameSortingFormat 'sortingLastName sortingFirstName'

# Disk Images
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Disk Mount
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Disk Utility
defaults write com.apple.DiskUtility advanced-image-options -bool true
defaults write com.apple.DiskUtility DUShowEveryPartition -bool true

# Dock
defaults write -g AppleFontSmoonthing -bool true
defaults write -g NSTableViewDefaultSizeMode -bool true

## 6 = graphite
defaults write -g AppleAquaColorVariant 6
defaults write -g AppleHighlightColor '0.780400 0.815700 0.85800'
defaults write com.apple.MenuBarClock ClockEnabled -bool false

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock checked-for-launchpad -bool true
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock itunes-notifications -bool false
defaults write com.apple.dock tilesize -int 24
defaults write com.apple.dock show-process-indicators -bool false

## 2 = Misson Control, 5 = Start Screen Saver, 13 = Lock Screen, 14 = Quick Note
defaults write com.apple.dock wvous-tl-corner -int 13
defaults write com.apple.dock wvous-tr-corner -int 2
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-br-corner -int 14
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 48
defaults write com.apple.dock use-new-list-stack -bool true
defaults write com.apple.dock pinning -string end
defaults write com.apple.dock orientation -string right
defaults write com.apple.dock workspaces-edge-delay -float 2.2
defaults write -g AppleInterfaceStyle -string Dark
defaults write com.apple.dock static-only -bool true

# Dialog
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Dictionary
defaults write -g com.apple.DictionaryServices -dict-add "DCSActiveDictionaries" '("/Library/Dictionaries/Sanseido Super Daijirin.dictionary", "/Library/Dictionaries/Sanseido The WISDOM English-Japanese Japanese-English Dictionary.dictionary", "/System/Library/Frameworks/CoreServices.framework/Frameworks/DictionaryServices.framework/Resources/Wikipedia.wikipediadictionary", "/Library/Dictionaries/Oxford Thesaurus of English.dictionary", "/Library/Dictionaries/Oxford Dictionary of English.dictionary")'

# DVD
defaults write com.apple.digihub com.apple.digihub.blank.cd.appeared -dict action 1
defaults write com.apple.digihub com.apple.digihub.blank.cd.music.appeared -dict action 1
defaults write com.apple.digihub com.apple.digihub.blank.cd.picture.appeared -dict action 1
defaults write com.apple.digihub com.apple.digihub.blank.blank.dvd.appeared -dict action 1
defaults write com.apple.digihub com.apple.digihub.blank.dvd.video.appeared -dict action 1

# DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Finder
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder FXPreferredViewStyle Nlsv
defaults write com.apple.finder NewWindowTarget PfHm
defaults write com.apple.finder NewWindowTargetPath $HOME/Desktop
defaults write com.apple.finder FxDefaultSearchScope -string SCcf
defaults write com.apple.finder EmptyTrashSecurely -bool true
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true
defaults write NSGlobalDomain NavPanelFileListModeForOpenMode -int 2
defaults write NSGlobalDomain NSNavPanelFileListModeForOpenMode2 -int 2
defaults write NSGlobalDomain NSNavPanelFileLastListModeForOpenModeKey -int 2
defaults write NSGlobalDomain NSNavPanelFileLastListModeForSaveModeKey -int 2
defaults write NSGlobalDomain NSNavPanelFileListModeForSaveMode2 -int 2
defaults write NSGlobalDomain NavPanelFileListModeForSaveMode -int 2
defaults write NSGlobalDomain com.apple.springing.delay -float 0
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder QLEnableXRayFolders -bool true
defaults write com.apple.finder QLEnableTextSelection -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write NSGlobalDomain com.apple.springing.enabled -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Firewall
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on

# Guest
sudo defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess -bool false
sudo defaults write /Library/Preferences/com.apple.smb.server AllowGuestAccess -bool false

# Keyboard
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
defaults write -g ApplePressAndHoldEnabled -bool false

# Login
defaults write NSGlobalDomain userMenuExtraStyle -int 0
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false
sudo defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool true
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Mail
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true
defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

# Mission Control
defaults write com.apple.dock expose-animation-duration -float 0.15
defaults write com.apple.dock  expose-group-by-app -bool false

# Safari
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari ProxiesInBookmarksBar "()"
defaults write com.apple.Safari WebContinuousSpellCheckingEnabled -bool true
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false
defaults write com.apple.Safari WebKitPluginsEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2PluginsEnabled -bool false
defaults write com.apple.Safari WebKitJavaEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled -bool false
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true
defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DefaultTextEncodingName utf-8
defaults write com.apple.Safari WebKitMinimumFontSize -int 12
defaults write com.apple.Safari EnableNarrowTabs -int 1
defaults write com.apple.Safari SearchProviderShortName DuckDuckGo
defaults write com.apple.Safari ShowFavoritesBar-v2 -int 1
defaults write com.apple.Safari ShowOverlayStatusBar -int 1
defaults write com.apple.Safari ShowStandaloneTabBar -int 1
defaults write com.apple.Safari WebKitDefaultTextEncodingName utf-8
defaults write com.apple.Safari WebKitPreferences.defaultTextEncodingName utf-8
defaults write com.apple.Safari WebKitPreferences.minimumFontSize -int 12

# Screen Capture
defaults write com.apple.screencapture disable-shadow -bool false
defaults write com.apple.screencapture name cap_
defaults write com.apple.screencapture type jpg
defaults write com.apple.screencapture location $HOME/Desktop

# Power
sudo pmset -c darkwakes 1
sudo pmset -b disksleep 10
sudo pmset -c disksleep 60
sudo pmset -b displaysleep 5
sudo pmset -c displaysleep 30

# Restart
sudo systemsetup -setrestartfreeze on

# Sound
sudo nvram SystemAudioVolume=" "
sudo nvram StartupMute=%01
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
defaults write com.apple.sound.beep.feedback -bool false

# System
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.CrashReporter DialogType -bool false
defaults -currentHost write com.apple.SubmitDiagInfo AutoSubmit -bool false
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 7
defaults write com.apple.systempreferences ShowAllMode -int 1
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
defaults write NSGlobalDomain AppleMiniaturizeOnDoubleClick -bool true
defaults write NSGlobalDomain AppleShowScrollBars Always
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Text Edit
defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit SmartCopyPaste -bool false
defaults write com.apple.TextEdit SmartDashes -bool false
defaults write com.apple.TextEdit SmartQuotes -bool false
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Terminal
defaults write com.apple.terminal StringEncodings -array 4

# Hidden files
chflags nohidden $HOME/Library
sudo chflags nohidden /Volumes

# Locate
set -e
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
set +e
sudo /usr/libexec/locate.updatedb

# Delete all .DS_Store
find ~/ -name .DS_Store | xargs rm

# Restart components
killall Dock
killall Finder
killall SystemUIServer
