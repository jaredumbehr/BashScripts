#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Run ssh-agent ONCE per user per system boot.
# [installed via https://github.com/hopeseekr/BashScripts]
# @see https://unix.stackexchange.com/a/217223/15780
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_

alias kubectl='minikube kubectl --'
# Make gauth accept a case insensitive search argument.
function gauth() { `which gauth` | grep -i ^${1}; }
