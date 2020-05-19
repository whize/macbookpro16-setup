# Macbook Pro 16inch Setup

This repository includes...

- Manuals to install softwares.
- Configuration files.

## Manuals

### Install List

#### Manually

Install these softwares manually.  
I know some softwares are in the App Store but I install manually because I want to follow online update for each softwares.  

Note: some links are for japanese link. but maybe redirect to your language page.

- [1password](https://1password.com)
- [Google Chrome](https://www.google.com/intl/ja_jp/chrome/)
- [Hammerspoon](https://www.hammerspoon.org)
- [Alfred](https://www.alfredapp.com)
- [Bitdefender antivirus for mac](https://www.bitdefender.com/solutions/antivirus-for-mac.html)
- [iStart Menus](https://bjango.com/mac/istatmenus/)
- [Bartender 3](https://www.macbartender.com)
- [Evernote](https://evernote.com/intl/jp)
- [Skitch](https://evernote.com/intl/jp/products/skitch)
- [Boxy Suite](https://www.boxysuite.com)
- [Scan Snap driver](http://scansnap.fujitsu.com/jp/dl/)
- [iTerm2](https://www.iterm2.com)
- [PhpStorm](https://www.jetbrains.com/ja-jp/phpstorm/)
- [Visual Studio Code](https://code.visualstudio.com)
- [Docker Desktop for Mac](https://www.docker.com/products/docker-desktop)
- [Slack](https://slack.com/intl/ja-jp/downloads/mac?geocode=ja-jp)
- [Stoplight Studio](https://stoplight.io/studio/)
- Fonts
  - [Cica](https://github.com/miiton/Cica) This is japanese font.
  - [Powerline/Fonts](https://github.com/powerline/fonts)
- [MS Office](https://www.office.com/?omkt=ja-jp) Signin and download office app.
- [Focusrite Scarlett 6i6 driver](https://customer.focusrite.com/en/support/downloads?brand=Focusrite&product_by_range=555&download_type=all)

#### AppStore

- Xcode
- Photo ScapeX


#### Execute command on terminal

```shell
# Install Homebrew
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install libraries
$ brew install tmux fish hub tig neovim exa colordiff figlet pandoc peco ghq ansible zlib mysql-client curl libmcrypt bzip2 bison re2c libxml2 libjpeg libpng icu4c libzip autoconf automake libiconv libedit tidy-html5 openssl
$ curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
$ brew cask install  virtualbox vagrant 

# Create symlink for building php
$ ln -s /usr/local/opt/tidy-html5/include/tidybuffio.h /usr/local/opt/tidy-html5/include/buffio.h

$ git config --global ghq.root ~/git

# Install spacemacs
$ brew tap d12frosted/emacs-plus
$ brew install emacs-plus --with-spacemacs-icon
$ ln -s /usr/local/opt/emacs-plus/Emacs.app /Applications
$ git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d


# create symlinks
$ ./create_symlinks.sh


$ exec $SHELL -l
$ tn work
$ fisher add oh-my-fish/theme-bobthefish
$ fisher add oh-my-fish/plugin-peco
$ fisher add decors/fish-ghq

# Install anyenv
$ git clone https://github.com/anyenv/anyenv ~/.anyenv
$ set -Ux fish_user_paths $HOME/.anyenv/bin $fish_user_paths
$ ~/.anyenv/bin/anyenv init
$ echo 'status --is-interactive; and source (anyenv init -|psub)'
$ source ~/.config/fish/config.fish
$ ~/.anyenv/bin/anyenv install --init
$ mkdir -p ~/.anyenv/plugins
$ git clone https://github.com/znz/anyenv-update.git ~/.anyenv/plugins/anyenv-update

$ anyenv install goenv
$ anyenv install nodenv
$ anyenv install pyenv
$ anyenv install phpenv

$ exec $SHELL -l

$ goenv install 1.14.2
$ nodenv install 12.16.1
$ pyenv install 3.6.4
$ phpenv install 7.0.33
$ phpenv install 7.3.16

$ exec $SHELL -l

$ goenv global 1.14.2
$ pyenv global 3.6.4
$ nodenv global 12.16.1

$ pip install powerline-status
$ pip install psutil
$ exit

# restart tmux
$ tn work

```
