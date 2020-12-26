function nvm
    bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

# Neo4j
set -x NEO4J_HOME /usr/local/opt/neo4j

# Protractor
abbr pro "./node_modules/protractor/bin/protractor e2e/conf.js "

# Docker
alias dockerstop='docker stop (docker ps -a -q)'
alias dockerrm='docker rm (docker ps -a -q)'
alias dockerrmi='docker rmi (docker images -a -q) -f'
alias dockerrmv="docker volume rm (docker volume ls -qf dangling=true)"

# direnv
# eval (direnv hook fish)
# set -x JAVA_HOME (/usr/libexec/java_home)
ssh-add ~/.ssh/id_logicgate
ssh-add ~/.ssh/id_mathpunk
set -x AWS_PROFILE logicgate # or is it LG?
