# Environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=/usr/bin/nano

# Paths
export PROJECT_HOME=$HOME/Projects

# Aliases
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../../'
alias c='clear'
alias f='open -a Finder ./'
alias h='history'
alias path='echo -e ${PATH//:/\\n}'
alias edit='subl'
alias numFiles='echo $(ls -1 | wc -l)'
alias flushDNS='dscacheutil -flushcache'
alias reload='source ~/.bash_profile'
alias now="date +'%m-%d-%Y %r'"
alias today="date +'%m-%d-%Y'"
alias gmtdate="date -u -R | sed 's/\+0000/GMT/'"
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

# Git
alias clone='git clone $1'
alias pull='git pull origin master'
alias push='git pull origin master && git push origin master'

# Docker
alias docker_stop='docker stop $(docker ps -a -q)'
alias docker_remove='docker rm $(docker ps -a -q)'

# Functions
trash () { command mv "$@" ~/.Trash ; }
makezip () { zip -r "$1".zip "$1" ; }
maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

# Python
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Node
export PATH="/usr/local/opt/node@6/bin:$PATH"
export PATH="$PATH:`yarn global bin`"

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle