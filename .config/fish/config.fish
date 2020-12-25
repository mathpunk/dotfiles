# config
set fish_greeting ""
fish_vi_key_bindings
set -Ux EDITOR 'emacsclient -a "" -c' # this might work funny with no x server

# editor
alias e='emacsclient -a "" -c'
# alias ec="/usr/bin/emacsclient -ct"
# alias es="/usr/bin/emacs --daemon"

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

abbr ys "yadm status"
abbr ya "yadm add"
abbr yc "yadm commit"

# other
abbr yt "youtube-dl"


# Path
# =======
# set PATH $PATH $HOME/.nvm/versions/node/v10.10.0/bin/
# export NODE_OPTIONS="--max-old-space-size=3072" # lg
# set PATH $PATH ~/system/bin
# set PATH $PATH ~/.local/bin

set PATH /Users/tomhenderson/bin /Users/tomhenderson/.nvm/versions/node/v10.10.0/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/local/opt/neo4j/bin /Users/tomhenderson/.nvm/versions/node/v10.10.0/lib/node_modules

# /opt/leiningen /opt/arduino /Users/tomhenderson/.cargo/bin


# NVM
function nvm
    bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

# Neo4j
export NEO4J_HOME=/usr/local/opt/neo4j
# set PATH $PATH /usr/local/opt/neo4j/bin

# Leiningen
# set PATH $PATH /opt/leiningen

# Hardware
# set PATH $PATH /opt/arduino

# Music Creation
# export SOUND_FONT=/usr/share/soundfonts/FluidR3_GM.sf2

# Rust Binaries
# set PATH $PATH $HOME/.cargo/bin


# Protractor
abbr pro "./node_modules/protractor/bin/protractor e2e/conf.js "

# Docker
alias dockerstop='docker stop (docker ps -a -q)'
alias dockerrm='docker rm (docker ps -a -q)'
alias dockerrmi='docker rmi (docker images -a -q) -f'
alias dockerrmv="docker volume rm (docker volume ls -qf dangling=true)"

# direnv
eval (direnv hook fish)

export JAVA_HOME=(/usr/libexec/java_home)

# SECRETS / ENV
# =================================
source ~/.secrets.sh
ssh-add ~/.ssh/id_logicgate

# aws
set AWS_PROFILE logicgate # or is it LG?
