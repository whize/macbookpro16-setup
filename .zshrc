

alias tn="tmux new -s"
alias tl="tmux ls"
alias ta="tmux a -t"
alias ls="exa"
alias ll="ls -l"
alias lla="ls -la"
alias vim="nvim"
alias view="vim -R"
alias diff="colordiff -u"

if which ansible-vault > /dev/null; then
    alias mysec="ansible-vault edit ~/Documents/secret.md"
fi

if which rustup > /dev/null; then
    export RUST_SRC_PATH="~/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src"
fi

vterm_printf(){
    if [ hn "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ] ); then
        # Tell tmux o pass the escape sequence throgh
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}

#------------
# settings for cdr
#------------
setopt AUTO_PUSHD
setopt pushd_ignore_dups
DIRSTACKSIZE=100

# activate cdr, add-zsh-hook 
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

#------------
# settings for history
#------------
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history # save command history with execution time
setopt share_history # share history to other windows
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_verify
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_expire_dups_first
setopt hist_expand
setopt inc_append_history

# emacs key bind
bindkey -e
# auto cd
setopt auto_cd

eval "$(anyenv init -)"

powerline-daemon -q

export PATH="${GOPATH}/bin:$PATH"

eval "$(starship init zsh)"

source ~/.config/zsh/zplug.zsh


