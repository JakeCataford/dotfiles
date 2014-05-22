#Rails
alias bx='bundle exec'
alias bxr='bundle exec rake'
alias bxrs='bundle exec rails s'
alias bxrc='bundle exec rails c'

#Git
alias gsu='git submodule update --init --recursive'
alias gp='git pull'
alias grh='git reset --hard HEAD'
alias git-reset-sub="git submodule foreach git reset --hard HEAD"
alias gitflush="git branch --merged master | grep -v master | xargs git branch -d && git remote prune origin"

#ios
alias _wacksims="killall -m -KILL \"iPhone Simulator\""

#android
alias logcat="logcat-color"

#Cache Flush
alias flush_redis='redis-cli -p 16379 flushall'
alias flush_memcached='echo "flush_all" | nc 127.0.0.1 21211'
alias toiletmode='echo "flushing all caches... FLUUUSSHHHH" && _flush_redis && _flush_memcached'
