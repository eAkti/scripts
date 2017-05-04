# User
export PROJECT_HOME=$HOME/Projects

# Aliases
alias go_home="cd ~"
alias go_projects="cd $PROJECT_HOME"
alias docker_stop="docker stop $(docker ps -a -q)"
alias docker_remove="docker rm $(docker ps -a -q)"
alias docker_rmi="docker rmi -f $(docker images -q)"

# Python
# export WORKON_HOME=$HOME/.virtualenvs
# source /usr/local/bin/virtualenvwrapper.sh

# Node
export PATH="/usr/local/opt/node@6/bin:$PATH"
export PATH="$PATH:`yarn global bin`"

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle