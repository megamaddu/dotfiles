zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit
setopt notify
unsetopt beep

bindkey "^[[3~" delete-char

fpath=(/usr/local/share/zsh-completions $fpath)

DIR=$HOME/.dotfiles/terminal
source $DIR/.base

# vi:ft=sh

# OPAM configuration
. /Users/trotter/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

if [ -f $DIR/.env.private ]; then
  source $DIR/.env.private
fi

