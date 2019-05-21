
# HeminWon
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export NVM_DIR="/Users/heminwon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function

export GOPATH=$HOME/.go:$HOME/Documents/go
export PATH=$PATH:${GOPATH//://bin:}/bin
export GOBIN=
export GO111MODULE=on

export PATH=$PATH:/usr/local/mysql/bin
export PATH=$HOME/Documents/flutter/bin:$PATH

function proxy() {
    curl cip.cc
    export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;
    echo "---->"
    curl cip.cc
}