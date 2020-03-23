# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bin:/usr/local/bin:/sbin:/usr/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/b4umchen/.oh-my-zsh"

# Tmux
#ZSH_TMUX_AUTOSTART='true'
ZSH_TMUX_FIXTERM='$TERM'
ZSH_TMUX_FIXTERM_WITH_256COLOR='screen-256color'

plugins=(
  git
  tmux
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-completions
)
# Completions 
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# Enable the addition of zsh hook functions
autoload -U add-zsh-hook

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set the tab title to the current working directory before each prompt
function tabTitle () {
  window_title="\033]0;${PWD##*/}\007"
echo -ne "$window_title"
}

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Rest

# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Git Aliases
alias gi="git init"
alias ga="git add ."
alias gcm="git commit -m "
alias gp="git push"

# Shortcuts Aliases
alias dev="cd ~/dev/"
alias settings="cd ~/dev/settings/"
alias shakebox="cd ~/dev/shakebox/"

alias runs="cd ~/dev/shakebox && bundle install && rake db:migrate && npm install && yarn install && foreman start"
alias rps="cd ~/dev/shakebox && yarn install && npm i && rake assets:clean && RAILS_ENV=production rake assets:precompile && rails s -e production -b 'ssl://0.0.0.0:443?key=public/keys/localhost.key&cert=public/keys/localhost.pem'"
alias start="cd ~/dev/shakebox && foreman start"

# zsh
alias zsh="open ~/.zshrc"

# Nvim
alias v="nvim"
alias vi="nvim"
alias init="nvim ~/.vimrc"

# weitere Aliases
alias python=/usr/local/bin/python3.7
alias pip=/usr/local/bin/pip3

# open vscode
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

export PATH="/usr/local/opt/libxslt/bin:$PATH"
export PATH="$PATH:`yarn global bin`"
#eval "$(rbenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

source /Users/b4umchen/.bash_profile