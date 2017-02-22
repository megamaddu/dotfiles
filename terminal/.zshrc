zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit
setopt notify
unsetopt beep

DIR=$HOME/.dotfiles/terminal
source $DIR/.base

# vi:ft=sh
