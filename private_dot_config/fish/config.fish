# GOAL: Platform independent configuration. This might be the wrong abstraction layer but let's try it
# set PLATFORM (uname -a|bb -i '(-> *input* first (str/split #" ") first)')

# Defaults
# --------
set fish_greeting ""
fish_vi_key_bindings
set -x EDITOR 'code -w'
set -x BROWSER (which firefox)

# Abbreviations
# -------------
alias e='code -w'

alias chez=chezmoi
alias che='chezmoi edit'


# git
abbr gs "git status"
abbr gs "git status"
abbr ga "git add"
abbr gc "git commit"
abbr gcm "git commit -m"
abbr gb "git branch"
abbr gbm "git branch -m"
abbr gf "git fetch"
abbr gco "git checkout"
abbr gcb "git checkout -b"
abbr gl "git log --oneline --decorate --graph"


# other
abbr yt "youtube-dl"

# Path
# =======
set PATH $HOME/bin  /usr/local/bin /usr/bin /bin /usr/sbin /sbin


# SECRETS
# =================================
source ~/.secrets.sh

if status is-login
    ssh-add ~/.ssh/id_mathpunk
end

switch (uname)
    case Linux
        echo "I\'m home!"
    case Darwin
        source $HOME/.config/fish/work_config.fish
    case '*'
        echo Unknown platform! Cool!
end
