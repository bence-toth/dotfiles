# Set prompt

# `parse_git_branch` includes a `#` and the git branch name
# defaults to an empty string if folder is not under version control
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/#\1/'
}

# `\[\033[01;34m\]` sets text color to blue
# `\W` is directory basename (home is `~`)
# `\[\033[01;35m\]` sets text color to purple
# `$(parse_git_branch)` includes a `#` and the git branch name
# `\[\033[00m\]`` sets text color back to default
# finally a `$` and a space
#
# E.g.: `src#master$ `
PS1='\[\033[01;34m\]\W\[\033[01;35m\]$(parse_git_branch)\[\033[00m\]\$ '


# Register aliases

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
