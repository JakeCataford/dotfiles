#!/bin/bash
SCRIPTPATH="${BASH_ARGV[0]}"
export DOTFILE_PATH="$(dirname `readlink $SCRIPTPATH`)"

#Update if there's upstream changes, dont pipe stderr to dev null
$( cd $( dirname `readlink $SCRIPTPATH`) && git pull origin master >/dev/null )

if [[ -L $SCRIPTPATH ]]; then
  cd $(dirname $(readlink $SCRIPTPATH))
fi
for file in bash_profile_scripts/*
do
  if [[ -f $file ]]; then
    source $file
  fi
done

# go home.
cd ~
