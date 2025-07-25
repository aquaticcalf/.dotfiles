#
# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# colors
alias ls="ls --color=auto"
alias grep="grep --color=auto"
PS1="[\u@\h \W]\$ "

# dotfiles -> https://news.ycombinator.com/item?id=11071754
alias config="/usr/bin/git --git-dir='$HOME/.dotfiles/' --work-tree='$HOME'"

# quality of life
alias install="sudo pacman -S"
alias remove="sudo pacman -R"
alias freeze="sudo pacman -Qqe > ~/pacman.txt && echo 'done, see ~/pacman.txt'"

# rust
. "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# opencode
export PATH=/home/sam/.opencode/bin:$PATH

# lvim
export PATH=/home/sam/.local/bin:$PATH
