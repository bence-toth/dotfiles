# Override `ls`, `grep`, `fgrep` and `egrep` with `--color=auto`

if [ -x /usr/bin/dircolors ]; then
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

# Git

# Remove all local branches which were merged on remote,
# except for `master`, `develop` and `staging`
alias git-purge-merged='git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | grep -v "staging" | xargs -n 1 git branch -d'

# npm

alias start="npm start"
alias test="npm run test"
alias coverage="npm run test:coverage"
alias lint="npm run lint"
alias cypress="npm run cypress"

# npx

alias serve="npx http-server" # https://github.com/http-party/http-server
alias jsonapi="npx json-server" # https://github.com/typicode/json-server
alias npmupdate='npx npm-check' # https://github.com/dylang/npm-check
alias majestic='npx majestic' # https://github.com/Raathigesh/majestic
alias pccheck='npx alex' # https://github.com/get-alex/alex

# Miscellaneous

alias password='openssl rand -base64 14'
alias myip="curl http://ipecho.net/plain; echo"
