
valid_port() {
    pIDa=`/usr/sbin/lsof -i :${1} | grep -v "PID" | awk '{print $2}'`
    if [ "$pIDa" != "" ];
    then
        return 0
    else
        return 1
    fi
}

# HeminWon
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export GOPATH=$HOME/.go:$HOME/Documents/go
export PATH=$PATH:${GOPATH//://bin:}/bin
export GOBIN=
export GO111MODULE=auto

export PATH=$PATH:/usr/local/mysql/bin
export PATH=$HOME/Documents/flutter/bin:$PATH

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

function proxy() {
    valid_port 7890
    if [ $? -eq 0 ]; then
        curl cip.cc
        export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
        echo "---->"
        curl cip.cc
    else
        echo 'ssr did not start, Please open ssr'
    fi  
}

file_array=(~/dotfiles\/aliases)
for file in ${file_array[*]}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;