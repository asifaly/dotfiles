# If you come from bash you might have to change your $PATH.
# eval "$(starship init zsh)"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.daml/bin:$PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$PATH:$HOME/flutter/flutter/bin"
fpath=(~/.daml/zsh $fpath)
#zmodload zsh/zprof
KEYTIMEOUT=1
autoload -U promptinit; promptinit
prompt purer

# General Aliases
alias ..="cd .."
alias vv="vim"
alias ~="cd ~"
alias alconf="nvim ~/.alacritty.yml"
alias v="nvim"
alias l="ls -lapG"
alias ls="ls"
alias la="ls -a"
alias bu="brew upgrade && brew update && brew cleanup"
alias zrc="nvim ~/.zshrc"
alias zimrc="nvim ~/.zimrc"
alias vrc="nvim ~/.config/nvim/init.vim"
alias c="clear"
alias kbssh="ssh -t root@68.183.80.200"
alias szrc="source ~/.zshrc"
alias fireup="npm run emulate"
alias pissh="ssh -t pi@192.168.0.10"
# Git Aliases
alias gs="git status"
alias gpa="git push -u origin --all"
alias gpm="git push -u origin master"
alias gpd="git push -u origin develop"
alias gcm="git checkout master"
alias gcd="git checkout develop"
alias gmd="git checkout master && git merge develop && git push -u origin master"
alias ga="git add ."
alias gst="git stash"
alias gstd="git stash drop"
alias gstp="git stash pop"
alias gcom="git commit -m"
# TMUX aliases
alias mxn="tmux -2 new -s"
alias mxk="tmux kill-session -t"
alias mxl="tmux ls"
alias mxa="tmux -2 a -t"
alias mxconf="v ~/.tmux.conf"
alias mxsrc="tmux source ~/.tmux.conf"
# Rails Aliases
alias fs="foreman start"
alias rc="rails c"
alias bi="bundle install"
alias rdbm="rails db:migrate"
alias rdbs="rails db:setup"
alias rdbr="rails db:rollback"
alias rgs="rails g scaffold"
alias rds="rails d scaffold"
alias rgm="rails g model"
alias rdm="rails d model"
alias rgc="rails g controller"
alias rdc="rails d controller" 
# Node Aliases
alias ns="npm run serve"
alias buildstage="npm run buildstage"
alias buildprod="npm run buildprod"
# Add default node to path
export PATH=~/.nvm/versions/node/v14.15.4/bin:$PATH

export EDITOR='nvim'
# Load NVM
export NVM_DIR=~/.nvm
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh" --no-use

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

eval "$(rbenv init -)"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
. /usr/local/etc/profile.d/z.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='rg --files --follow --glob "!.git/*"'
export FZF_CTRL_T_COMMAND='rg'
# if type rg &> /dev/null; then
#   export FZF_DEFAULT_COMMAND='rg --files'
#   export FZF_DEFAULT_OPTS='-m --height 50% --border'
# fi

# fd() {
#   local dir
#   dir=$(find ${1:-.} -path '*/\.*' -prune \
#                   -o -type d -print 2> /dev/null | fzf +m) &&
#   cd "$dir"
# }

# fh() {
#   eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
# }
#zprof
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


