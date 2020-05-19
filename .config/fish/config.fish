status --is-interactive; and source (anyenv init -|psub)

function fish_user_key_bindings
    bind \cr peco_select_history # Bind for prco history to Ctrl+r
end

set GHQ_SELECTOR peco

set PATH /usr/local/opt/mysql-client/bin $PATH
set PATH /usr/local/opt/bison/bin $PATH
set PATH $HOME/bin $PATH

set -Ux CPATH /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include
set -Ux PHP_BUILD_CONFIGURE_OPTS "--with-libedit=/usr/local/opt/libedit --with-iconv=/usr/local/opt/libiconv --with-zlib-dir=/usr/local/opt/zlib --with-bz2=/usr/local/opt/bzip2 --with-tidy=/usr/local/opt/tidy-html5 --with-curl=/usr/local/opt/curl"

alias ls='exa'
alias ll='ls -l'
alias lla='ls -la'
alias vim='nvim'
alias view='vim -R'
alias diff='colordiff -u'
alias e='emacsclient -nw -a ""'
alias emacs='emacsclient -nw -a ""'
alias ekill="emacsclient -e '(kill-emacs)'"
