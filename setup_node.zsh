#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

# Node versions are managed with `n`, which is in the Brewfile.
# See zshrc for N_PREFIX variable and addition to $path array.

if exists node; then
  echo "\n >>> Node $(node --version) & NPM $(npm --version) already installed >>>\n"
else
  echo "\n >>> Installing Node & NPM with n... >>> \n"
  n latest
fi

# Install Global NPM Packages
npm install --global trash-cli

echo "Global NPM Packages Installed:"
npm list --global --depth=0