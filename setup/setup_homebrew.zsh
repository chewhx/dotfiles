#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup>>>\n"

if exists brew; then
  echo "\n >>> brew already exists, skipping install >>>\n"
else 
  echo "\n >>> brew doesn't exist, continiuing with install >>>\n"
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# TODO: Keep an eye out for a different `--no-quarantine` solution.
# Currently, you can't do `brew bundle --no-quarantine` as an option.
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474

brew bundle --verbose