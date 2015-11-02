#!/bin/bash
SCRIPTPATH="${BASH_ARGV[0]}"
export DOTFILE_PATH="$(dirname `readlink $SCRIPTPATH`)/.."
# Update if there's upstream changes, dont pipe stderr to dev null
$( cd $( dirname `readlink $SCRIPTPATH`) && git pull origin master >/dev/null 2>&1 )

if [[ -L $SCRIPTPATH ]]; then
  cd $(dirname $(readlink $SCRIPTPATH))
fi
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

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
