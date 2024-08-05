# Aliases
alias src="source ~/.zshrc"
alias rm=trash
alias g=git
alias y=yarn
alias br=brew
alias rename=mv
alias touch="fse touch"
alias bbd="brew bundle dump --force --describe"

## npm
alias nr="npm run"
alias ni="npm install"
alias nid="npm install -D"
alias nu="npm uninstall"

## pnpm
alias pn="pnpm"
alias pni="pnpm add"
alias pnid="pnpm add -D"

## util
alias prettierrc="~/.dotfiles/scripts/prettier"
alias commitizen="~/.dotfiles/scripts/commitizen"
alias keyboard="~/.dotfiles/scripts/keyboard.sh"

## ls replacement
alias ll='exa -laFh --git --icons'
alias ls='exa --grid --icons'
alias la='exa --grid --icons -a'

## cli
alias nextjs="npx create-next-app@latest"
alias nextjstypescript="npx create-next-app@latest --typescript"
alias vite="npm create vite@latest"

## cd directories
alias root="cd ~"
alias dev="cd ~/Dev"
alias dot="cd ~/.dotfiles"
alias dwl="cd ~/Downloads"
alias runjs="cd ~/Library/Application\ Support/runjs"

# Plugins
source ~/.zsh/common.zsh-theme
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^[[Z' autosuggest-accept  # shift + tab  | autosuggest

# Set up the MANPAGER to use 'bat' for displaying man pages with syntax highlighting and proper formatting
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Configure Homebrew Cask to not quarantine downloaded applications, bypassing macOS Gatekeeper checks
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Set 'bat' as the default command to run when an empty command is given in certain shells
export NULLCMD=bat

# Set the directory where the Node.js version manager 'n' will install Node.js versions
export N_PREFIX=$HOME/.n

# Add the 'n' installation directory to the PATH, prioritizing the 'node' and 'npm' binaries installed by 'n'
export PATH=$N_PREFIX/bin:$PATH

# VS Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Python
export PATH="$(brew --prefix)/opt/python@3/libexec/bin:$PATH"

# bun completions
[ -s "/Users/chewhx/.bun/_bun" ] && source "/Users/chewhx/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
