#!/bin/bash
SCRIPTPATH="${BASH_ARGV[0]}"

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
