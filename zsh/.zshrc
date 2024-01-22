### ZSH HOME
export ZSH=$HOME/sw/dotfiles/zsh

### ---- history config -------------------------------------
export HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'



# -------------------------------------------------------------------
# Plugins
# -------------------------------------------------------------------
source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions-master/zsh-autosuggestions.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)

# -------------------------------------------------------------------
# THEME 
# -------------------------------------------------------------------
source $ZSH/themes/powerlevel10k/powerlevel10k.zsh-theme

