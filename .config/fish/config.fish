# GOAL: Platform independent configuration. This might be the wrong abstraction layer but let's try it

function is-mac
    uname -a|bb -i '(boolean (re-find #"Darwin" (first *input*)))'
end

if is-mac
    set OS "MacOS"
else
    set OS "Unknown"
end

function is-work-machine
    is-mac
end

# Defaults
# --------
set fish_greeting ""
fish_vi_key_bindings
set -Ux EDITOR 'emacsclient -a "" -c' # this might work funny with no x server


# Abbreviations
# -------------
alias e='emacsclient -a "" -c'

# git
abbr gs "git status"
abbr ga "git add"
abbr gc "git commit"
abbr gcm "git commit -m"
abbr gb "git branch"
abbr gf "git fetch"
abbr gco "git checkout"
abbr gcb "git checkout -b"
abbr gl "git log --oneline --decorate --graph"

# yadm
abbr ys "yadm status"
abbr ya "yadm add"
abbr yc "yadm commit"

# other
abbr yt "youtube-dl"


# Path
# =======
set PATH $HOME/bin /$HOME/.nvm/versions/node/v10.10.0/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/local/opt/neo4j/bin /$HOME/.nvm/versions/node/v10.10.0/lib/node_modules


# NVM
function nvm
    bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

# Neo4j
set NEO4J_HOME /usr/local/opt/neo4j

# Protractor
abbr pro "./node_modules/protractor/bin/protractor e2e/conf.js "

# Docker
alias dockerstop='docker stop (docker ps -a -q)'
alias dockerrm='docker rm (docker ps -a -q)'
alias dockerrmi='docker rmi (docker images -a -q) -f'
alias dockerrmv="docker volume rm (docker volume ls -qf dangling=true)"

# direnv
eval (direnv hook fish)
set JAVA_HOME (/usr/libexec/java_home)

# SECRETS / ENV
# =================================
source ~/.secrets.sh
ssh-add ~/.ssh/id_logicgate
ssh-add ~/.ssh/id_mathpunk

# aws
set AWS_PROFILE logicgate # or is it LG?
