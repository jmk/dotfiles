# Disable new window animation
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO

# Disable press-and-hold for keys in favor of key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# No read delay in mail.app conversation view
defaults write com.apple.Mail MarkAsReadDelay 0

# Disable Photos.app from launching when removable media is mounted
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES

# Disable iOS-style power chime sound (e.g., on MacBook 12")
defaults write com.apple.PowerChime ChimeOnAllHardware -bool false

# Don't save recipients of mail (these addresses are synced between
# computers, even if they don't share relevant accounts, e.g., work and
# personal machines)
defaults write com.apple.mail SuppressAddressHistory -bool true
