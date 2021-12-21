

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

setopt hist_ignore_all_dups

function peco_select_history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
    CURSOR=$#BUFFER

    zle clear-screen
}

zle -N peco_select_history
bindkey '^r' peco_select_history

function peco-src () {
    local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-src
bindkey '^g' peco-src

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

powerline-daemon -q

eval "$(starship init zsh)"
