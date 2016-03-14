# GIT
alias gst='git status -sb'
alias gus='git reset HEAD --'
alias guc='git reset --soft HEAD^'
alias gdf='git diff --word-diff --color-words'
alias gdev='!git checkout develop && git pull --rebase && git checkout -'
alias glo='git log --oneline --decorate --color'
alias glp='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias grb='git rebase -i'
alias gtr='git ls-tree -r master --name-only'
alias glgrep='git log -E -i --grep'
alias gstash='git stash -u'

alias heroku_psql='heroku pg:psql'

alias rubo='git status --porcelain | grep -v ^D | cut -c4- | xargs rubocop'

alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

# Rails
alias rspec="bundle exec rspec"
alias rake="bundle exec rake"