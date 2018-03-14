#!/bin/sh

echo "Creating a new git repo"
if test -d .git; then
  echo "Repo already exists. Skipping ..."
else
  echo Setting up git...
  git init
  git add .
  git commit -m "Initial commit"
fi

echo "Installing Dependencies ..."
yarn install
echo "Done."
