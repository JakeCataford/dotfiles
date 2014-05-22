if [ ! -f 'bash/downloaded/git-prompt.sh' ]; then
  curl -o bash/downloaded/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi
export GIT_PS1_SHOWDIRTYSTATE="1"
export GIT_PS1_SHOWCOLORHINTS="1"
export GIT_PS1_SHOWUPSTREAM="auto"
source bash/downloaded/git-prompt.sh
#Probably requires a powerline patched font:
export PS1="\e[46m\e[37m\$(__git_ps1 '  %s ')\e[0m\e[40m\e[36m \u \e[0m\e[90m \W \e[0m$ "
