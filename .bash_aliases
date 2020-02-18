# Override `ls`, `grep`, `fgrep` and `egrep` with `--color=auto`

if [ -x /usr/bin/dircolors ]; then echo asd fi
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Folders and files

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias l='ls -lsa'
alias search="find . -name "

# Processes

alias ps="ps auxf"
alias psgrep="ps auxf | grep -v grep | grep -i -e VSZ -e"
alias top="htop"
