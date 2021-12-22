# dotfiles

My personal dotfiles

# For connecting to GitHub with SSH Keys

- https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection

# Todo

- Terminal Preferences
- Changed Shell to ZSH
- Dock Preferences (Remove show recent applications)
- Mission Control Preference (Don't rearrange spaces, group windows by application)
- Finder Show Path Bar
- Trackpad (Three Finger Drag and Tap to Click)
- Git (config and SSH)
- 1Password (sign in with secret key)
- Dropbox (sign in with password)
- Alfred (turn off Spotlight shortcut and use for Alfred)
- Keyboard shortcut keys for switching tabs in browsers

# Notes

- Uninstall your apps with `brew` or `mas` command line

# VS Code

- Sign in to GitHub to sync settings
- Get Operator Mono font from iCloud Drive

# DevDocs

- Activate required doc packages

# RunJS

- Install packages:
  - axios
  - fs-extra
  - faker

# MongoDB Setup

[link](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/)

_This process should already have been automated, but if it fails, follow the steps below or at the official mongodb website._

This taps the MongoDB Homebrew Tap to download the official homebrew formula

```zsh
brew tap mongodb/brew
```

Install version 5.0

```zsh
brew install mongodb-community@5.0
```

Start running mongod process

```zsh
brew services start mongodb-community@5.0
```

Stop running mongod process

```zsh
brew services stop mongodb-community@5.0
```

# MongoDB Compass

- Atlas connection string(s) in 1Password

# Things

- Things Cloud login user and password in 1Password

# Chrome

- Log in profiles with google account credentials

# Brave browser

- Sync settings with sync code in 1Password

# Authy

- Import keys from other devices

# Sketch

- License key in 1Password

# Screenie

- Set folder to Desktop/Screenshots
- Set default screenshots location - Screenshot.app > Options > Other...

- ytdl

NPM Global Packages

- postman
- sass?
- prettier?
- dotenv?
- live-server?
- docker


- Xcode (if iOS dev)
- dayone(?)
- clean my Mac

- calibre
- the unarchiver

- lightweight pdf

- zsh prompt themes
- dropbox sync Alfred preferences and other files

devDependencies should also be listed out in package.json
