#Rails
alias bx='bundle exec'
alias bi='bundle check || bundle install --jobs=4'
alias bxr='bundle exec rake'
alias bxrs='bundle exec rails s'
alias bxrc='bundle exec rails c'
alias bxrt='bundle exec ruby -Itest'

#Git
alias gsu='git submodule update --init --recursive'
alias gp='git pull'
alias grh='git reset --hard HEAD'
alias git-reset-sub="git submodule foreach git reset --hard HEAD"
alias gitflush="git branch --merged master | grep -v master | xargs git branch -d && git remote prune origin"

#rubs
alias rt='ruby -Itest'

#android
alias logcat="logcat-color"

#tmux
alias tmux='tmux -2'

#oops prevention :)
git() { if [[ $@ == "push origin +master" || $@ == "push origin +develop" ]]; then open https://www.youtube.com/watch?v=Npfwj6sklvA; else command git "$@"; fi; }

#exit
alias ":wq"="exit"

#vagrant
alias vagrant="cd ~/Vagrant/ && vagrant "

#clear bash
alias c="clear"

bt() {
  BROWSER_TESTING=1 bx rake test:browser TEST="$@"
}

squash() {
  FEATURE=$(git rev-parse --abbrev-ref HEAD)
  git rebase -i $(git merge-base $FEATURE master)
}

alias "mergebase"="echo \$(git merge-base \$(git rev-parse HEAD) master)"

alias "git_diff_merge"="git diff HEAD \$(mergebase)"
