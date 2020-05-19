#!/bin/zsh

APP_DIR=$(cd $(dirname $0) && pwd)

for file (.zshrc .tmux.conf .spacemacs) { ln -sf $APP_DIR/$file $HOME/$file }

ln -sf $APP_DIR/.config/fish/config.fish $HOME/.config/fish/config.fish
ln -sf $APP_DIR/.config/powerline $HOME/.config/powerline
ln -sf $APP_DIR/bin $HOME/bin

