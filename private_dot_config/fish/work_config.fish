echo "work profile"

function nvm
    bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use 14.20.0

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
eval (direnv hook fish)
set -x JAVA_HOME (/usr/libexec/java_home)
set PATH $PATH /usr/local/opt/neo4j/bin /Users/tomhenderson/lg/misc

# AWS
set -x AWS_PROFILE logicgate
set -x AWS_DEFAULT_REGION "us-west-2"
set -x AWS_PAGER ""
set --erase AWS_ACCESS_KEY_ID
set --erase AWS_SECRET_ACCESS_KEY
set --erase AWS_SESSION_TOKEN


if status is-login
    ssh-add ~/.ssh/id_ed25519.pub
end

# Risk Cloud Junk
set -x NEO4J_USERNAME neo4j
set -x CYPRESS_SHARED_PASSWORD ASDFasdf1234!
set -x CYPRESS_LG_ADMIN_PASSWORD RPGMakerXP4!
set -x CYPRESS_LG_API_KEY VU1USUhTOGs6ZWFhYWViZjUtMWUyMy00YmMwLWFjMzEtMTMzZTNiNDc5NWM4

# Get A Real Snake
alias python=python3