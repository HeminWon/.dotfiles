
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function

export GOPATH=$HOME/.go:$HOME/Documents/go
export PATH=$PATH:${GOPATH//://bin:}/bin
export GOBIN=

export PATH=$PATH:/usr/local/mysql/bin
export PATH=$HOME/Documents/flutter/bin:$PATH