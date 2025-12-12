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

# Start ssh-agent if not already running
if [ -z "$SSH_AGENT_PID" ]; then
    eval "$(ssh-agent -s)"
fi

# Add the key if it hasn't been added yet
ssh-add -l &>/dev/null
if [ $? -ne 0 ]; then
    ssh-add ~/.ssh/id_ed25519
fi
