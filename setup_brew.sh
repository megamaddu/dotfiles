#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install bash
brew install bash-completion
brew install zsh
brew install curl --with-c-ares --with-libssh2 --with-nghttp2 --with-rtmpdump
brew install git --with-blk-sha1 --with-brewed-curl --with-brewed-openssl --with-gettext --with-pcre --with-persistent-https
brew install hub
brew install vim --with-lua --with-luajit --with-override-system-vi --with-python3
brew install editorconfig
brew install node
brew install yarn
brew install openssl
brew install homebrew/dupes/srm
brew install haskell-stack
brew install the_silver_searcher
brew install fzf
brew install liquidprompt
brew install awscli
brew install mono
brew install cmake
brew install exercism

brew cask install discord
brew cask install keybase
brew cask install telegram-desktop
brew cask install docker
brew cask install slack
brew cask install visual-studio-code
brew cask install flux
brew cask install spectacle
brew cask install zeplin
brew cask install firefox
brew cask install google-chrome-dev
brew cask install spotify
brew cask install parallels-desktop
brew cask install sketch
brew cask install screenhero

# vi:ft=sh
