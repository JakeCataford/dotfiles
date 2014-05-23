#!/bin/bash
SCRIPTPATH="${BASH_ARGV[0]}"

#Update if there's upstream changes
git pull origin master >/dev/null

if [[ -L $SCRIPTPATH ]]; then
  cd $(dirname $(readlink $SCRIPTPATH))
fi
for file in bash/*
do
  if [[ -f $file ]]; then
    source $file
  fi
done

for file in bash/secrets/*
do
  if [[ -f $file ]]; then
    source $file
  fi
done
