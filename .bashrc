#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# dotfiles
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Start ssh-agent if not running
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    eval "$(ssh-agent -s)"
fi

# Add your key (will prompt once per login)
ssh-add -q ~/.ssh/id_ed25519
