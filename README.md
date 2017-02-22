# dotfiles

_Disclaimer:_
_I'm not responsible for any harm these scripts bring to you or your computers should you decide to run them._
_They might be safe. Maybe._


## What's it do?

- brew + programs (full list [here](setup_brew.sh))
- git config
- vim config
- zsh + liquidprompt + aliases (full list [here](terminal/.aliases))


## Setup

Fork and clone to `~/.dotfiles` and change the name and email in `~/.dotfiles/.gitconfig`,
then run `cd ~/.dotfiles && ./setup.sh && cd ~` (or to skip `brew` setup: `cd ~/.dotfiles && ./setup.sh --no-brew && cd ~`).

You'll probably want to replace my "project" aliases with your own (at the bottom of `~/.dotfiles/terminal/.aliases`).

This setup is intended for `zsh` because its completion has always worked much better for me by default, but it should work for most shells.
The `brew` setup script will include an updated version of `zsh`.

To use `zsh`:
1. add run `sudo vim /etc/shells` and add `/usr/local/bin/zsh` to the allowed shells
2. run `chsh` and specify `/usr/local/bin/zsh` as your shell

To use `bash`, add `source $HOME/.dotfiles/terminal/.bash_profile` to your `~/.bash_profile`.
To use another shell, add `$DIR=$HOME/.dotfiles/terminal; source $HOME/.dotfiles/terminal/.base` to your shell init script.


_Thanks to all the other dotfiles repo owners out there I've pillaged configs from over the years._
