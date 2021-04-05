alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'
alias ls='ls -la --color=auto'

export PATH="$PATH:$HOME/.config/composer/vendor/bin"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

