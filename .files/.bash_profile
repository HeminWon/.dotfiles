
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function

export GOPATH=/Users/heminwon/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN