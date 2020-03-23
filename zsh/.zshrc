export TERM="xterm-256color"
POWERLEVEL9K_MODE='awesome-patched'

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/b4umchen/.oh-my-zsh"

# Tab Titel
function tabTitle () {
  window_title="\033]0;${PWD##*/}\007"
echo -ne "$window_title"
}

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# open VSCode im Terminal mit "code ." (öffnet den Ordner in dem man sich befindet)
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

# Tmux
#ZSH_TMUX_AUTOSTART='true'
ZSH_TMUX_FIXTERM='$TERM'
ZSH_TMUX_FIXTERM_WITH_256COLOR='screen-256color'

# PlugIn
plugins=(
	tmux
	git
	zsh-autosuggestions
	zsh-completions
	zsh-syntax-highlighting
)

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

# tmux
alias b4umchen="tmux -2 new-session -s b4umchen"

# weitere Aliases
alias python=/usr/local/bin/python3.7
alias pip=/usr/local/bin/pip3

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
