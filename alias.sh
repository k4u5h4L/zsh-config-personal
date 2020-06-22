alias update='sudo pacman -Syu'
alias f="fuck"
alias c="clear"
alias s="sudo"
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

alias vpn-connect='sudo protonvpn c -r'
alias vpn-disconnect='sudo protonvpn disconnect'
alias py='python'
alias n='node'
alias pipes='sh /home/sl4ught3r/pipes.sh'
alias nmn='nodemon'

