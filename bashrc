THW bash material: https://github.com/thehackerwithin/berkeley/tree/master/bash

# Git branch notifications
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$(parse_git_branch)$ "
else
    PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$(parse_git_branch)$ "
fi
unset color_prompt force_color_prompt
