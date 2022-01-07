#!/usr/bin/env zsh


#---------------------
# Plugin
#---------------------
if [ ! -e "${HOME}/.zplug/init.zsh" ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
fi

source ~/.zplug/init.zsh

# Plusgin list

zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'zsh-users/zsh-autosuggestions'
zplug "mollifier/anyframe"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

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
