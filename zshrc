

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

# Change ZSH Options

# Create Aliases
alias ll='exa -laFh --git --icons'
alias ls='exa --grid --icons'
alias la='exa --grid --icons -a'
alias nr='npm run'
# alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias ytdl="youtube-dl"
alias ytdl-best="youtube-dl -f best"
alias src="source ~/.zshrc"
alias ddrn="code ~/Dendron/dendron.code-workspace"
alias root="cd ~"
alias dev="cd ~/Dev"
alias dot="cd ~/.dotfiles"
alias dwl="cd ~/Downloads"
alias tut="cd ~/Tutorials"
alias rm=trash
alias runjs="cd ~/Library/Application\ Support/runjs"
alias runjsp="cd ~/Library/Application\ Support/runjs && cat package.json"
alias npm-g="npm list -g --depth=0"
alias g=git
alias prettierrc="node ~/.prettier.js"
alias nodemonjson="node ~/.nodemon.js"
alias br=brew
alias notion-jour="node ~/Workflows/wf-notion-journal/dist/index.js"
alias rename="mv"
alias fb="firebase"

# Git
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Customise Prompt(s)
# PROMPT='%1~ %L %# '
source ~/.agnoster.zsh-theme

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# export PATH="$PATH:$N_PREFIX/bin"

# Write Handy Functions
function mkcd () {
  mkdir $1 && cd $1
}

# Use ZSH Plugins
source ~/.zshplugins


# ...and Other Surprises
