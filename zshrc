

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
alias ytdl="yt-dlp"
alias ytdl-best="yt-dlp -f best"
alias src="source ~/.zshrc"
alias ddrn="code ~/Dendron/dendron.code-workspace"
alias root="cd ~"
alias dev="cd ~/Dev"
alias work="cd ~/Work"
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
alias hero="heroku"
alias cra="npx create-react-app"
alias touch="fse touch"
alias checknpm="npm-name"
alias ni="npm install"
alias nid="npm install -D"
alias nu="npm uninstall"
alias y="yarn"
alias mongoRep="run-rs --keep --mongod"
alias nv="nvim"
alias j="jrnl"
alias doc="doctl"
alias nextjs="npx create-next-app@latest"
alias nextjstypescript="npx create-next-app@latest --typescript"
alias vite="npm create vite@latest"

# Git
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Customise Prompt(s)
# PROMPT='%1~ %L %# '
source ~/.zsh-themes/agnoster.zsh-theme

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# export PATH="$PATH:$N_PREFIX/bin"

# Write Handy Functions
function mkcd () {
  mkdir $1 && cd $1
}

# Use ZSH Plugins
source ~/.zsh/zshplugins

# ...and Other Surprises
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^[[Z' autosuggest-accept  # shift + tab  | autosuggest

# Python
export PATH="$(brew --prefix)/opt/python@3/libexec/bin:$PATH"