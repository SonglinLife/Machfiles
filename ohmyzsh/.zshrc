# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

[[ -s /home/wu/.autojump/etc/profile.d/autojump.sh ]] && source /home/wu/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u
plugins=(
    git
    vi-mode
    you-should-use
    sudo
    zsh-syntax-highlighting
    zsh-autosuggestions
    gitignore
    cp
    per-directory-history
    safe-paste
    colored-man-pages
    history-substring-search
)

source $ZSH/oh-my-zsh.sh


