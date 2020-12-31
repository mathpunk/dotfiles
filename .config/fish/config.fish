# GOAL: Platform independent configuration. This might be the wrong abstraction layer but let's try it
# set PLATFORM (uname -a|bb -i '(-> *input* first (str/split #" ") first)')

# Defaults
# --------
set fish_greeting ""
fish_vi_key_bindings
set -x EDITOR 'emacsclient -a "" -c' # this might work funny with no x server
set -x BROWSER (which firefox)

# Abbreviations
# -------------
alias e='emacsclient -a "" -c'

# git
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

# yadm
abbr dot yadm # rename Yet Another Dotfile Manager -- cute but not mnemonic
abbr ds "yadm status"
abbr da "yadm add"
abbr dc "yadm commit"
abbr dp "yadm push"

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
        echo I\'m home!
    case Darwin
        source $HOME/.config/fish/work_config.fish
    case '*'
        echo Unknown platform! Cool!
end
