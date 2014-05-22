if [ ! -f bash_profile_scripts/downloaded/git-completion.bash ]; then
  curl -o bash_profile_scripts/downloaded/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
fi

source bash_profile_scripts/downloaded/git-completion.bash
