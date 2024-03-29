#!/bin/bash

brew-cask-upgrade() {
    for app in $(brew cask list)
    do
        local latest="$(brew cask info "${app}" | awk 'NR==1{print $2}')"
        local versions=($(ls -1 "/usr/local/Caskroom/${app}/.metadata/"))
        local current=$(echo ${versions} | awk '{print $NF}')
        if [[ "${latest}" = "latest" ]]; then
            echo "[!] ${app}: ${current} == ${latest}"
            [[ "$1" = "-f" ]] && brew cask install "${app}" --force
            continue
        elif [[ "${current}" = "${latest}" ]]; then
            continue
        fi
        echo "[+] ${app}: ${current} -> ${latest}"
        brew cask uninstall "${app}" --force
        brew cask install "${app}"
    done;
}

brew-cask-upgrade

