# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
alias ll='ls -alF --color=auto'
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

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
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)
source $ZSH/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

bindkey '^I' autosuggest-accept

# -------------------------------------------------------------------
# THEME 
# -------------------------------------------------------------------
source $ZSH/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# BEGIN ANSIBLE MANAGED BLOCK - Golang
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
# END ANSIBLE MANAGED BLOCK - Golang

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# BEGIN ANSIBLE MANAGED BLOCK - NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# END ANSIBLE MANAGED BLOCK - NVM
# BEGIN ANSIBLE MANAGED BLOCK - Rust
export PATH="$HOME/.cargo/bin:$PATH"
# END ANSIBLE MANAGED BLOCK - Rust
alias activate_python="source /home/logan/.venvs/python/bin/activate"

# fnm
FNM_PATH="/home/logan/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/logan/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
# BEGIN ANSIBLE MANAGED BLOCK - fnm
export PATH=$HOME/.local/share/fnm:$PATH
eval "$(fnm env --use-on-cd 2>/dev/null || true)"
# END ANSIBLE MANAGED BLOCK - fnm
# BEGIN ANSIBLE MANAGED BLOCK - Neovim
# Add local bin to PATH for Neovim
export PATH="$HOME/.local/bin:$PATH"
# END ANSIBLE MANAGED BLOCK - Neovim
