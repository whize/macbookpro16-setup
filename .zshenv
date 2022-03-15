export LC_ALL=ja_JP.UTF-8
export LANG=ja_JP.UTF-8
export NOTIFY_COLOR="#ed5c5c"
export GHQ_SELCTOR=peco
export CPATH=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include
export PKG_CONFIG_PATH=/usr/local/opt/krb5/lib/pkgconfig:/usr/local/opt/openssl@1.1/lib/pkgconfig:/usr/local/opt/icu4c/lib/pkgconfig:/usr/local/opt/libedit/lib/pkgconfig:/usr/local/opt/libxml2/lib/pkgconfig:/usr/local/opt/oniguruma/lib/pkgconfig
export CPPFLAGS=-I/usr/local/opt/openjdk/include
export CFLAGS="-Wno-error=implicit-function-declaration -DU_DEFINE_FALSE_AND_TRUE=1"
export CXXFLAGS="-Wno-error=implicit-function-declaration -DU_DEFINE_FALSE_AND_TRUE=1"

export PATH=$HOME/.anyenv/bin:$HOME/bin:$PATH

eval "$(anyenv init -)"
export PATH="${GOPATH}/bin:$PATH"

source ~/.config/zsh/zplug.zsh

