#!/bin/bash
SCRIPTPATH="${BASH_ARGV[0]}"
export DOTFILE_PATH="$(dirname `readlink $SCRIPTPATH`)/.."
echo "🐙  Updating Dotfiles 🐙"
#Update if there's upstream changes, dont pipe stderr to dev null
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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added by travis gem
[ -f /Users/JakeCataford/.travis/travis.sh ] && source /Users/JakeCataford/.travis/travis.sh
