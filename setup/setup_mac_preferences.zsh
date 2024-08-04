#!/bin/bash

# Function to display error messages
function log_error {
    echo "⚠️ Error: $1" 1>&2
}

# Function to log success messages
function log_success {
    echo "✅ $1"
}

### Update Dock Preferences ###

# Remove the setting to "Show recent applications" in the Dock
if defaults write com.apple.dock showrecents -bool false; then
    log_success "Dock: Removed 'Show recent applications'."
else
    log_error "Dock: Failed to remove 'Show recent applications'."
fi

# Restart the Dock to apply changes
if killall Dock; then
    log_success "Dock: Restarted successfully."
else
    log_error "Dock: Failed to restart after updating preferences."
fi


### Update Mission Control Preferences ###

# Don't rearrange spaces automatically
if defaults write com.apple.dock mru-spaces -bool false; then
    log_success "Mission Control: Disabled 'Rearrange spaces automatically'."
else
    log_error "Mission Control: Failed to disable 'Rearrange spaces automatically'."
fi

# Group windows by application
if defaults write com.apple.dock "expose-group-by-app" -bool true; then
    log_success "Mission Control: Enabled 'Group windows by application'."
else
    log_error "Mission Control: Failed to enable 'Group windows by application'."
fi

# Restart the Dock again
if killall Dock; then
    log_success "Dock: Restarted successfully."
else
    log_error "Dock: Failed to restart after updating Mission Control preferences."
fi


### Update Trackpad Preferences ###

# Enable Three Finger Drag
if defaults write com.apple.dock trackpadThreeFingerDrag -bool true; then
    log_success "Trackpad: Enabled 'Three Finger Drag'."
else
    log_error "Trackpad: Failed to enable 'Three Finger Drag'."
fi

# Enable Tap to Click
if defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true; then
    log_success "Trackpad: Enabled 'Tap to Click'."
else
    log_error "Trackpad: Failed to enable 'Tap to Click'."
fi

# Restart the Dock to apply Trackpad changes
if killall Dock; then
    log_success "Dock: Restarted successfully."
else
    log_error "Dock: Failed to restart after updating Trackpad preferences."
fi


### Update Finder Preferences ###

# Enable Show Path Bar in Finder
if defaults write com.apple.finder ShowPathbar -bool true; then
    log_success "Finder: Enabled 'Show Path Bar'."
else
    log_error "Finder: Failed to enable 'Show Path Bar'."
fi

# Restart Finder to apply the Path Bar change
if killall Finder; then
    log_success "Finder: Restarted successfully."
else
    log_error "Finder: Failed to restart after updating Path Bar preference."
fi

echo "🔧 Preference updates completed."
