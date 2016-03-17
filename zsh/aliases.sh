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
git() {
  if [[ $@ == "push origin +master" || $@ == "push origin +develop" ]]; then
    open https://www.youtube.com/watch?v=Npfwj6sklvA
  elif [[ $@ == "remove merged" ]]; then
    git branch --merged master | grep -v "\*" | grep -v master | xargs -n 1 git branch -d
  elif [[ $@ == "squish" ]]; then
    !HEAD_COMMIT=$(git rev-list @ -n 1) BASE_COMMIT=$(git merge-base @ origin/master) && git reset --soft $BASE_COMMIT && git commit --reuse-message=$HEAD_COMMIT~$[$(git rev-list $BASE_COMMIT..$HEAD_COMMIT --count)-1] —edit
  else
    command git "$@"
  fi
}

#exit
alias ":wq"="exit"

#vagrant
alias vagrant="cd ~/Vagrant/ && vagrant "

#clear bash
alias c="clear"

browser_test() {
  SHOPIFY_SERVICES_PORT=3000 CAPYBARA_DRIVER=remote_chrome BROWSER_TESTING=1 bx rake test:browser TEST="$@"
}

alias "mergebase"="echo \$(git merge-base \$(git rev-parse HEAD) master)"

alias "git_diff_merge"="git diff HEAD \$(mergebase)"
