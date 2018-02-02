# GIT
alias gst='git status -sb'
alias gdf='git diff --word-diff --color-words'
alias glgrep='git log -E -i --grep'
alias gstash='git stash -u'
alias gpf='git push --force-with-lease'
alias gmasta='git checkout master && git pull --rebase && git checkout -'

# Rails
alias rspec="bundle exec rspec"
alias rake="bundle exec rake"

# misc
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"