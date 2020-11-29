status --is-interactive; and source (anyenv init -|psub)

function fish_user_key_bindings
    bind \cr peco_select_history # Bind for prco history to Ctrl+r
end

set GHQ_SELECTOR peco

set PATH /usr/local/opt/mysql-client/bin $PATH
set PATH /usr/local/opt/bison/bin $PATH
set PATH $HOME/bin $PATH
set PATH $HOME/.cargo/bin $PATH
if which node > /dev/null
    set PATH $HOME/.anyenv/envs/nodeenv/versions/12.16.1/bin $PATH
end


set -Ux CPATH /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include

set -gx PKG_CONFIG_PATH "/usr/local/opt/krb5/lib/pkgconfig" $PKG_CONFIG_PATH
set -gx PKG_CONFIG_PATH "/usr/local/opt/openssl@1.1/lib/pkgconfig" $PKG_CONFIG_PATH
set -gx PKG_CONFIG_PATH "/usr/local/opt/icu4c/lib/pkgconfig" $PKG_CONFIG_PATH
set -gx PKG_CONFIG_PATH "/usr/local/opt/libedit/lib/pkgconfig" $PKG_CONFIG_PATH
set -gx PKG_CONFIG_PATH "/usr/local/opt/libxml2/lib/pkgconfig" $PKG_CONFIG_PATH
set -gx PKG_CONFIG_PATH "/usr/local/opt/oniguruma/lib/pkgconfig" $PKG_CONFIG_PATH
#set -Ux PHP_BUILD_CONFIGURE_OPTS "--with-libedit=/usr/local/opt/libedit --with-iconv=/usr/local/opt/libiconv --with-zlib-dir=/usr/local/opt/zlib --with-bz2=/usr/local/opt/bzip2 --with-tidy=/usr/local/opt/tidy-html5 --with-curl=/usr/local/opt/curl"

set -gx CPPFLAGS "-I/usr/local/opt/openjdk/include"

alias ls='exa'
alias ll='ls -l'
alias lla='ls -la'
alias vim='nvim'
alias view='vim -R'
alias diff='colordiff -u'
alias e='emacsclient -nw -a ""'
alias emacs='emacsclient -nw -a ""'
alias ekill="emacsclient -e '(kill-emacs)'"
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/avr-gcc@8/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/arm-gcc-bin@8/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths
set -g fish_user_paths "$HOME/.cargo/bin/rustup" $fish_user_paths

if which ansible-vault > /dev/null
    alias mysec='ansible-vault edit ~/Documents/secret.md'
end


if which rustup > /dev/null
    set -gx RUST_SRC_PATH "~/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src"
end
