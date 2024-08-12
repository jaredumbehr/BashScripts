# A better $PS1
export PS1="\[\033[38;5;12m\][\[$(tput sgr0)\]\[\033[38;5;10m\]hopeseekr\[$(tput sgr0)\]\[\033[38;5;12m\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\]\[\033[38;5;12m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;7m\]\w\[$(tput sgr0)\]\[\033[38;5;12m\]>\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# A Developer's $PATH
export PATH=./vendor/bin:./node_modules/.bin:/opt/android-sdk/cmdline-tools/latest/bin:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/opt/android-sdk/tools/bin:$PATH

# Bash Timer
# See https://github.com/hopeseekr/bash-timer
[[ -f ~/.bash-timer.sh ]] && source ~/.bash-timer.sh

# Hide snaps and flatpak mounts.
alias df='df -x squashfs | grep -v fuse'\

# Make `watch` honor ~/.bashrc aliases.
alias watch='watch '

#source ~/.bash_rc.aliases

# See https://github.com/rcaloras/bash-preexec
# **WARNING:** This must be the last line of your .bashrc.
# Source our file at the end of our bash profile (e.g. ~/.bashrc, ~/.profile, or ~/.bash_profile)
[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh

