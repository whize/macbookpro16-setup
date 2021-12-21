set -xg LC_ALL ja_JP.UTF-8
set -xg LANG ja_JP.UTF-8

status is-login; and pyenv init --path | source
pyenv init - | source

status --is-interactive; and source (anyenv init -|psub)

function fish_user_key_bindings
    bind \cr peco_select_history # Bind for prco history to Ctrl+r
end

set GHQ_SELECTOR peco

set -x PATH /usr/local/opt/mysql-client/bin $PATH
set -x PATH /usr/local/opt/bison/bin $PATH
set -x PATH $HOME/bin $PATH
set -x PATH $HOME/.local/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH "/usr/local/sbin" $PATH
set -x PATH "/usr/local/opt/avr-gcc@8/bin" $PATH
set -x PATH "/usr/local/opt/arm-gcc-bin@8/bin" $PATH
set -x PATH "/usr/local/opt/openjdk/bin" $PATH
set -x PATH "$HOME/.cargo/bin/rustup" $PATH
set -x PATH "/usr/local/opt/curl/bin" $PATH

if which node > /dev/null
    set PATH $HOME/.anyenv/envs/nodeenv/versions/12.16.1/bin $PATH
end

powerline-daemon -q


set -Ux CPATH /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include

set -gx PKG_CONFIG_PATH "/usr/local/opt/krb5/lib/pkgconfig" $PKG_CONFIG_PATH
set -gx PKG_CONFIG_PATH "/usr/local/opt/openssl@1.1/lib/pkgconfig" $PKG_CONFIG_PATH
set -gx PKG_CONFIG_PATH "/usr/local/opt/icu4c/lib/pkgconfig" $PKG_CONFIG_PATH
set -gx PKG_CONFIG_PATH "/usr/local/opt/libedit/lib/pkgconfig" $PKG_CONFIG_PATH
set -gx PKG_CONFIG_PATH "/usr/local/opt/libxml2/lib/pkgconfig" $PKG_CONFIG_PATH
set -gx PKG_CONFIG_PATH "/usr/local/opt/oniguruma/lib/pkgconfig" $PKG_CONFIG_PATH
#set -Ux PHP_BUILD_CONFIGURE_OPTS "--with-libedit=/usr/local/opt/libedit --with-iconv=/usr/local/opt/libiconv --with-zlib-dir=/usr/local/opt/zlib --with-bz2=/usr/local/opt/bzip2 --with-tidy=/usr/local/opt/tidy-html5 --with-curl=/usr/local/opt/curl"

set -gx CPPFLAGS "-I/usr/local/opt/openjdk/include"
set -gx CFLAGS "-Wno-error=implicit-function-declaration -DU_DEFINE_FALSE_AND_TRUE=1"
set -gx CXXFLAGS "-Wno-error=implicit-function-declaration -DU_DEFINE_FALSE_AND_TRUE=1"

alias ls='exa'
alias ll='ls -l'
alias lla='ls -la'
alias vim='nvim'
alias view='vim -R'
alias diff='colordiff -u'
#alias e='emacsclient -nw -a ""'
#alias emacs='emacsclient -nw -a ""'
#alias ekill="emacsclient -e '(kill-emacs)'"

if which ansible-vault > /dev/null
    alias mysec='ansible-vault edit ~/Documents/secret.md'
end


if which rustup > /dev/null
    set -gx RUST_SRC_PATH "~/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src"
end

alias ls="lsd"
alias ll="ls -l"
alias lla="ls -la"
alias ta="tmux a -t"
alias tl="tmux ls"
alias tn="tmux new -s"
alias psysh="/Users/whize/.anyenv/envs/phpenv/versions/7.4.16/composer/vendor/bin/psysh"

starship init fish | source
