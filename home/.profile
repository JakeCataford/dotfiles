realpath () {
  [ -e "$1" ] || return
  case $1 in
    /*) :;;
    *) set "$PWD/$1";;
  esac
  while [ -L "$1" ]; do
    set "${1%/*}" "$(readlink "$1")"
    case $2 in
      /*) set "$2";;
      *) if [ -z "$1" ]; then set "/$2"; else set "$(cd "$1" && pwd -P)/$2"; fi;;
    esac
  done
  case $1 in
    */.|*/..) set "$(cd "$1" && pwd -P)";;
    */./*|*/../*) set "$(cd "${1%/*}" && pwd -P)/${1##*/}"
  esac
  realpath=$1
}

echo $(realpath)
export DOTFILE_PATH="$(realpath)/.."
# Update if there's upstream changes, dont pipe stderr to dev null
$( cd $(realpath) && git pull origin master >/dev/null 2>&1 )

cd $(realpath)

for file in ../bash/*
do
  if [[ -f $file ]]; then
    source $file
  fi
done

# go home.
cd ~
if [ -z "$TMUX" ]; then
  tmux
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export TMUX_POWERLINE_DEBUG_MODE_ENABLED_DEFAULT="false"
export TMUX_POWERLINE_PATCHED_FONT_IN_USE_DEFAULT="true"
export TMUX_POWERLINE_THEME_DEFAULT="default"
export TMUX_POWERLINE_SEG_BATTERY_TYPE="percentage"
export TMUX_POWERLINE_SEG_WEATHER_UNIT="c"
export TMUX_POWERLINE_SEG_WEATHER_UPDATE_PERIOD="120"
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="3369"

# added by travis eem
[ -f /Users/JakeCataford/.travis/travis.sh ] && source /Users/JakeCataford/.travis/travis.sh

