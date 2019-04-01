# GIT
alias gst='git status -sb'
alias gdf='git diff --word-diff --color-words'
alias glgrep='git log -E -i --grep'
alias gstash='git stash -u'
alias gpf='git push --force-with-lease'
alias gmasta='git checkout master && git pull --rebase && git checkout -'
alias gbl="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(color:blue)%(authorname)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))' | tail -r | nl | tail -r"

# Rails
alias rspec="bundle exec rspec"
alias rake="bundle exec rake"

# misc
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias redconsole="echo -e '\033]6;1;bg;red;brightness;270\a'"
alias path='echo $PATH | tr -s ":" "\n"'