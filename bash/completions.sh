if [ ! -f ../bash/downloaded/git-completion.bash ]; then
  curl -o ../bash/downloaded/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
fi

source ../bash/downloaded/git-completion.bash
