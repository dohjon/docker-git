#!/usr/bin/env bash
set -e

sed -i "s/<NAME>/$NAME/g" $HOME/.gitconfig
sed -i "s/<EMAIL>/$EMAIL/g" $HOME/.gitconfig

sed -i "s/<GITHUB_USERNAME>/$GITHUB_USERNAME/g" $HOME/.git-credentials
sed -i "s/<GITHUB_PASSWORD>/$GITHUB_PASSWORD/g" $HOME/.git-credentials

exec git "$@"