alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'
alias php='php7'
alias ls='ls --color=auto'
alias editi3='vim ~/.config/i3/config'

export PATH="$PATH:$HOME/.config/composer/vendor/bin"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
