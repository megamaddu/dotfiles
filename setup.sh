touch $HOME/.hushlogin

if hash defaults 2>/dev/null; then
  defaults write -g ApplePressAndHoldEnabled -bool false
fi

curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

./setup_ln.sh
if [[ $* != *--no-brew* ]]; then
  ./setup_brew.sh
fi

# vi:ft=sh
