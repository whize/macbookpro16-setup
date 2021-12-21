export LC_ALL=ja_JP.UTF-8
export LANG=ja_JP.UTF-8
export PATH="$HOME/.anyenv/bin:$HOME/bin:$HOME/.cargo/bin:$HOME/.cargo/bin/rustup:/usr/local/opt/mysql-client/bin:/usr/local/opt/bison/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/avr-gcc@8/bin:/usr/local/opt/arm-gcc-bin@8/bin:/usr/local/opt/openjdk/bin:/usr/local/opt/curl/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin"

eval "$(anyenv init -)"

export PATH="${GOPATH}/bin:$PATH"

export NOTIFY_COLOR="#ed5c5c"
export GHQ_SELCTOR=peco
# export PATH=/usr/local/opt/mysql-client/bin:$PATH
# export PATH=/usr/local/opt/bison/bin:$PATH
# export PATH=$HOME/bin:$PATH
# export PATH=$HOME/.cargo/bin:$PATH
# export PATH=$HOME/.cargo/bin/rustup:$PATH
# export PATH=/usr/local/bin:$PATH
# export PATH=/usr/local/sbin:$PATH
# export PATH=/usr/local/opt/avr-gcc@8/bin:$PATH
# export PATH=/usr/local/opt/arm-gcc-bin@8/bin:$PATH
# export PATH=/usr/local/opt/openjdk/bin:$PATH
# export PATH=/usr/local/opt/curl/bin:$PATH

export CPATH=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include
export PKG_CONFIG_PATH=/usr/local/opt/krb5/lib/pkgconfig:/usr/local/opt/openssl@1.1/lib/pkgconfig:/usr/local/opt/icu4c/lib/pkgconfig:/usr/local/opt/libedit/lib/pkgconfig:/usr/local/opt/libxml2/lib/pkgconfig:/usr/local/opt/oniguruma/lib/pkgconfig
export CPPFLAGS=-I/usr/local/opt/openjdk/include
export CFLAGS="-Wno-error=implicit-function-declaration -DU_DEFINE_FALSE_AND_TRUE=1"
export CXXFLAGS="-Wno-error=implicit-function-declaration -DU_DEFINE_FALSE_AND_TRUE=1"
