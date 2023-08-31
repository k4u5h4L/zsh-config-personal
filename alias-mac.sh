# alias update='sudo pacman -Syu'
alias c="clear"
alias s="sudo"
#alias rmjunk="sudo pacman -Qdt"
alias shn="shutdown now"
alias l='ls'
alias list='ls'
#alias add='brew install'
alias ping-test='ping -c 3 google.com'
alias pt='ping -c 2 google.com'
#alias orphans='sudo pacman -Qdtq'
alias pls='sudo'
#alias install='brew install'
alias check-gpu-mem='nvidia-smi'
alias open-mariadb='sudo mysql -h localhost -u root'
alias nf='neofetch'
alias start-mysql='brew services start mysql'
alias open-mysql='mysql -u root -p'
alias install-pip='curl https://bootstrap.pypa.io/get-pip.py | python3'

alias start-mongo='sudo systemctl start mongodb'
alias start-maria='sudo systemctl start mariadb'
alias start-mysql='brew services start mysql'

restart-mysql() {
	mysql.server stop
	mysql.server start
}

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

git-commit () {
        git add .
        git commit -m $1
}

git-remote-change() {
        git remote rm origin
        git remote add origin $1
}

check-devices() {
        sudo nmap -sn 192.168.1.0/24
}

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

alias eslint-init='./node_modules/.bin/eslint --init'

alias run='~/run.sh'
alias topdf='/usr/bin/topdf.sh'

alias vpn-connect='sudo protonvpn c -r'
alias vpn-disconnect='sudo protonvpn disconnect'
alias py='python3'
alias py-v='python --version'
alias n='node'
alias pipes='sh /home/sl4ught3r/pipes.sh'
alias nmn='nodemon'
alias weather='curl http://wttr.in/$1'
alias conda-deact='conda deactivate'
alias stop-maria='sudo systemctl stop mariadb.service'

activate-c() {
        conda activate $1 
}

compress-video() {
        ffmpeg -i $1 -c:a aac -b:a 128k -c:v libx265 -crf 23 $2
}

conda-create-env() {
        conda create --name $1
}

alias conda-act='activate-c'

start-venv() {
        source $1/bin/activate
}

create-venv() {
        python3 -m venv $1
        # mv $1 ~/venvs/$1/

	start-venv venv

	curl https://bootstrap.pypa.io/get-pip.py | python3
}

alias list-venvs='ls ~/venvs/'
generate-pwa-assets() {
        npx pwa-asset-generator $1 $2
}

alias vsc-install='code --install-extension'

# alias extract-rar='unrar x $1'
extract-rar() {
        unrar x $1
}

alias stop-venv='deactivate'

alias python-serve='python3 -m http.server 8000'

alias download-dir='wget --recursive --no-parent --user-agent="Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36"'
alias download-dir-no-index='wget -r -np -R "index.html*"'

alias open-postgres='sudo -iu postgres'
alias start-postgres='sudo systemctl start postgresql.service'
alias stop-postgres='sudo systemctl stop postgresql.service'

alias check-package-installed='sudo pacman -Qs'

# nuclei vault config
#export VAULT_WATCH_DIR=/Users/kaushal/nuclei/vault
#export VAULT_WATCH_FILE=/Users/kaushal/nuclei/vault/bus-secret-staging.txt

alias gradle-clean-build='./gradlew clean build -x checkstyleMain -x pmdMain'

alias show-open-ports='lsof -PiTCP -sTCP:LISTEN'
alias open-emulator='emulator -avd Pixel_4_API_30'

# alias nvm='~/.nvm/nvm-exec'
alias how-big-is='du -sh'

whats-my-ip {
        curl 'https://api.ipify.org?format=json'
}

jdk() {
	jenv global $1
	zsh
}
