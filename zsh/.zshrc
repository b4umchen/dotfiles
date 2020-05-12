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
alias github="git init && git add . && git commit -m "
alias push="git push"

# Shortcuts Aliases
alias dev="cd ~/dev/"
alias dotfiles="cd ~/dev/dotfiles/"
alias shakebox="cd ~/dev/shakebox/"

# rails
alias update="bundle install && rails db:migrate && yarn install && npm install"
alias run="foreman start"
alias public="rm -R public/packs/ && yarn install && npm i && bundle install && bundle exec rails assets:clean && RAILS_ENV=production bundle exec rails assets:precompile && RAILS_ENV=production bundle exec rails db:create db:migrate && rails s --early-hints -e production -b 'ssl://0.0.0.0:443?key=public/keys/local.key&cert=public/keys/local.pem'"

# zsh
alias zshrc="nvim ~/.zshrc"

# Nvim
alias v="nvim"
alias vi="nvim"
alias vimrc="nvim ~/.vimrc"

# tmux
alias b4umchen="tmux -2 new-session -s b4umchen"
alias tmuxrc="nvim ~/.tmux.conf"

# weitere Aliases
alias python=/usr/local/bin/python3.7
alias pip=/usr/local/bin/pip3

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

. /usr/local/opt/asdf/asdf.sh

. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
