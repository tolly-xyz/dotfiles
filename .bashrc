#!/bin/bash

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \$ '
PATH=~/.local/bin/:~/.nix-profile/bin:$PATH

# Aliases
alias ls='LC_ALL=C ls --color=auto'
alias la="LC_ALL=C ls -lhAF --group-directories-first"
alias ll="LC_ALL=C ls -lhF --group-directories-first"

alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

complete -cf sudo

source /usr/share/nvm/init-nvm.sh

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

bind -x '"\C-f":"tmux_sessionizer"'
