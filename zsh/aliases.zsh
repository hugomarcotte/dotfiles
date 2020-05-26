# GIT
alias gst='git status -sb'
alias gdf='git diff --word-diff --color-words'
alias glgrep='git log -E -i --grep'
alias gstash='git stash -u'
alias gpf='git push --force-with-lease'
alias gmasta='git checkout master && git pull --rebase && git checkout -'
alias gbl="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(color:blue)%(authorname)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))' | tail -r | nl | tail -r"

# Rails
alias rspec="RUBYOPT='-W:no-deprecated -W:no-experimental' bundle exec rspec"
alias rake="RUBYOPT='-W:no-deprecated -W:no-experimental' bundle exec rake"
alias rails="RUBYOPT='-W:no-deprecated -W:no-experimental' bundle exec rails"

# misc
alias redconsole="echo -e '\033]6;1;bg;red;brightness;270\a'"
alias path='echo $PATH | tr -s ":" "\n"'

alias mvim="/Applications/MacVim.app/Contents/bin/mvim $1"
