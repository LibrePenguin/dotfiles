#  _     _ _              ____                        _
# | |   (_) |__  _ __ ___|  _ \ ___ _ __   __ _ _   _(_)_ __
# | |   | | '_ \| '__/ _ \ |_) / _ \ '_ \ / _` | | | | | '_ \
# | |___| | |_) | | |  __/  __/  __/ | | | (_| | |_| | | | | |
# |_____|_|_.__/|_|  \___|_|   \___|_| |_|\__, |\__,_|_|_| |_|
#                                         |___/
#
# LibrePenguins Bash shell: https://github.com/LibrePenguin

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### EXPORT
export PATH="$HOME/.config/emacs/bin:$PATH"

### PATH
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.emacs.d/bin" ] ;
  then PATH="$HOME/.emacs.d/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
  then PATH="$HOME/Applications:$PATH"
fi

if [ -d "/var/lib/flatpak/exports/bin/" ] ;
  then PATH="/var/lib/flatpak/exports/bin/:$PATH"
fi

if [ -d "$HOME/.config/emacs/bin/" ] ;
  then PATH="$HOME/.config/emacs/bin/:$PATH"
fi


 # Allows you to cd into directory by typing the directory name.
shopt -s autocd

# Setting my Bash promt.
#export PS1="\[$(tput bold)\]\[\033[38;5;1m\][\[$(tput sgr0)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;3m\]@\[$(tput sgr0)\]\[\033[38;5;14m\]\H\[$(tput sgr0)\]\[\033[38;5;1m\]]\[$(tput sgr0)\]\\$\[$(tput sgr0)\] "

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
#shopt -s checkwinsize

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi

# Some aliases
# pacman package manager
alias update='sudo pacman -Syu'
alias install='sudo pacman -S'

# Adding color
alias ls="lsd -lah --group-dirs first"
alias grep="grep --color=auto"

# Emacs
alias emacs="emacsclient -c -a 'emacs'"
alias em="emacs -nw"

# git
alias addall="git add ."
alias clone="git clone"
alias commit="git commit -m"
alias pull="git pull"
alias push="git push"

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

## If i want to use fastfetch
#fastfetch -c neofetch.jsonc
# Starchip-A cross-shell prompt
# To install Starchip run: curl -sS https://starship.rs/install.sh | sh
eval "$(starship init bash)"
