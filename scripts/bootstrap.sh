#!/bin/sh

echo Boostrapping project
if test -f logo.png; then
  rm logo.png
fi
PROJECT=`pwd | sed 's#.*/##'`
echo Readme for $PROJECT > README.md

echo Creating a new git repo
if test -d .git; then
  echo Repo already exists. Skipping ...
else
  echo Setting up git...
  git init
fi

echo Installing Dependencies ...
yarn install
echo Committing hara-kiri
rm -rf scripts
echo Done.
