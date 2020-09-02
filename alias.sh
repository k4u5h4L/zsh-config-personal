alias update='sudo pacman -Syu'
alias c="clear"
alias s="sudo"
alias rmjunk="sudo pacman -Qdt"
alias shn="shutdown now"
alias l='ls'
alias list='ls'
alias add='sudo pacman -S'
alias ping-test='ping -c 3 google.com'
alias orphans='sudo pacman -Qdtq'

list-pacman-cache() {
        echo "Number of pacman cache packages:"
        sudo ls /var/cache/pacman/pkg/ | wc -l

        echo "Amount of storage used:"
        du -sh /var/cache/pacman/pkg/
}

alias check-cache='list-pacman-cache'

clean-pacman-cache() {
        echo "Cleaning pacman cache except last one version"
        sudo paccache -rk 1

        echo "Cleaning pacman cache of uninstalled packages"
        sudo pacman -Sc
}

alias clean-cache='clean-pacman-cache'

mkcd ()
{
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}

cdl() {
        local dir="$1"
        local dir="${dir:=$HOME}"
        if [[ -d "$dir" ]]; then
                cd "$dir" >/dev/null; ls --color=auto
        else
                echo "bash: cdls: $dir: Directory not found"
        fi
}

CD() {
        cd "$1"; ls;
}
# alias cd='CD'

alias run='~/run.sh'
alias topdf='/usr/bin/topdf.sh'

alias vpn-connect='sudo protonvpn c -r'
alias vpn-disconnect='sudo protonvpn disconnect'
alias py='python'
alias py3='python3'
alias py-v='python --version'
alias n='node'
alias pipes='sh /home/sl4ught3r/pipes.sh'
alias nmn='nodemon'
alias weather='curl http://wttr.in/$1'
alias conda-deact='conda deactivate'

activate-c() {
        conda activate $1 
}

alias conda-act='activate-c'

