#!/usr/bin/env zsh

zi load 'zsh-users/zsh-syntax-highlighting'
zi load 'zsh-users/zsh-autosuggestions'
zi load "mollifier/anyframe"

#------------
# anyframe
#------------
zstyle ":anyframe:selector:" use peco
# Ctrl + z => cd履歴検索実行
bindkey '^Z' anyframe-widget-cdr
# Ctrl + r => コマンド履歴検索実行
bindkey '^R' anyframe-widget-put-history
# Ctrl + g => git リポジトリ検索移動
bindkey '^g' anyframe-widget-cd-ghq-repository


#---------------------
# zsh settings
#---------------------

# --------------
# completion
# --------------
autoload -Uz compinit && compinit
# sudo
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
    /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
