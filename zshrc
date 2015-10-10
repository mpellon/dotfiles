# Antigen- A zsh plugin manager
export ANTIGEN_DEFAULT_REPO_URL=https://github.com/robbyrussell/oh-my-zsh
source ~/.antigen/antigen.zsh

# Load the oh-my-zsh library.
antigen use oh-my-zsh

# Bundles from the default repository declared above.
antigen bundles <<EOBUNDLES

# Productivity

## Adds colors to manpages.
colored-man-pages

## Suggests package name with relevant command.
command-not-found

## cp with progress bar (rsync)
cp

## 'x' alias - swiss army knife for archive extracting
extract

## Enhanced tmux support
tmux

# Build tools

## Frontend package manager
bower

## Application shipment tool
docker

## Extras for git
git

## CLI access, url shortener
github

# NodeJS

## Easy access to NodeJS docs via CLI
node

## Package manager for NodeJS
npm

# Ruby

## Package manager
bundler

gem

# Ruby build tool
rake

# Ruby version switcher
rbenv

ruby

# Python

## Package manager
pip

python

## Isolated environments
virtualenv

# Distro-related

debian

EOBUNDLES

# Load the prompt theme.
antigen theme ys

# Tell Antigen that we are done.
antigen apply
