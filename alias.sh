alias update='sudo pacman -Syu'
alias f="fuck"
alias c="clear"
alias s="sudo"
alias rmjunk="sudo apt autoremove"
alias shn="shutdown now"
alias l='ls'
alias list='ls'
alias add='sudo pacman -S'
alias 69='./nice.sh'
alias ping-test='ping -c 3 google.com'
alias orphans='sudo pacman -Qdtq'

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

alias run='/usr/bin/run.sh'
alias vpn-connect='sudo protonvpn c -r'
alias vpn-disconnect='sudo protonvpn disconnect'
alias py='python'
alias py3='python3'
alias py-v='python --version'
alias n='node'
alias pipes='sh /home/sl4ught3r/pipes.sh'
alias nmn='nodemon'
