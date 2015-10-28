#Rails
alias bx='bundle exec'
alias bi='bundle install --jobs=4'
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

#ios
alias _wacksims="killall -m -KILL \"iPhone Simulator\""

#android
alias logcat="logcat-color"

#Cache Flush
alias flush_redis='redis-cli -p 16379 flushall'
alias flush_memcached='echo "flush_all" | nc 127.0.0.1 21211'
alias toiletmode='echo "flushing all caches... FLUUUSSHHHH" && _flush_redis && _flush_memcached'

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
