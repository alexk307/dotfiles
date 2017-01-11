# More detail in ls
alias ls="ls -lh"
# Alias Sublime Text 2 to open with `subl`
alias subl='open -a "Sublime Text 2"'
alias work="cd ~/Work"
# Grep a file with s `query`
alias s="ps aux | grep "
# Runs tests in a go package and opens coverage results in your browser
alias gotest="go test -coverprofile=testresultscoverage.out && go tool cover -html=testresultscoverage.out && rm testresultscoverage.out"
# Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HISTTIMEFORMAT="%F %T "
export GOPATH=~/gopath/

# Shows your current git branch in the terminal
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export CLICOLOR=1
PS1="\[\e[01;32m\]\u@\h ~>\$(parse_git_branch) \[\e[01;34m\]\w \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]\n\xE2\x98\xBA'; else echo -e '\[\e[01;31m\]\n\xE2\x98\xB9'; fi\` \[\e[01;34m\]\[\e[00m\] "
