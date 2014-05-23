#!/bin/bash
SCRIPTPATH="${BASH_ARGV[0]}"

if [[ -L $SCRIPTPATH ]]; then
  cd $(dirname $(readlink $SCRIPTPATH))
fi
for file in bash_rc_scripts/*
do
  if [[ -f $file ]]; then
    source $file
  fi
done
