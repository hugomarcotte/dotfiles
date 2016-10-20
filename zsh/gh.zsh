alias greenhouse='cd ~/src/greenhouse'
alias start_nginx="sudo nginx -c /Users/hugo/src/greenhouse/config/development_nginx.conf"
alias stop_nginx="sudo nginx -c /Users/hugo/src/greenhouse/config/development_nginx.conf -s stop"
alias reload_nginx="sudo nginx -c /Users/hugo/src/greenhouse/config/development_nginx.conf -s reload"

alias devlog="heroku logs --tail -n10000 --app dev-greenhouse"
alias uatlog="heroku logs --tail -n10000 --app uat-greenhouse"
alias testlog='tail -f log/test.log'

alias devc="heroku run rails console --app dev-greenhouse"
alias uatc="heroku run rails console --app uat-greenhouse"

alias testdb="RAILS_ENV=test bundle exec rake -t db:test:load db:seed"
alias local_migrate="rake db:local:migrate && testdb"
#git
alias gmasta='!git checkout master && git pull --rebase && git checkout -'

# DAJOKU
eval "$(docker-machine env default)"
export DOCKER_IP=$(docker-machine ip default)
alias create_docker_machine='docker-machine create -d virtualbox --virtualbox-memory 4096 default'

# More time for debugging
export RACK_TIMEOUT=120
export UNICORN_TIMEOUT=120
export UNICORN_WORKERS=1

# Travis
travis_screenshot() { aws s3 sync s3://test-heroku/artifacts/$1 .; }
# added by travis gem
[ -f /Users/hugo/.travis/travis.sh ] && source /Users/hugo/.travis/travis.sh

# ZEUS
ze () { ARGS=$@; zeus $@; ZE_EC=$?; stty sane; if [ $ZE_EC = 2 ]; then ze $ARGS; fi }

export PGHOST=localhost
export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.3.2

# SAUCE LAB
export SAUCE_CONNECT_EXEC=/Users/hugo/saucelabs/sc-4.3.9-osx/bin/sc
# export RUN_ON_SAUCE=false

export PATH="$PATH:/Users/hugo/src/gh-cli"
export PATH=$PATH:/Users/hugo/src/greenhouse/bin

# AWS
source /usr/local/share/zsh/site-functions/_aws
export AWS_BUCKET=""
alias awsprod='eval "$(/Users/hugo/src/switch_aws_acct/switch_aws_acct prod)"'
alias awsdev='eval "$(/Users/hugo/src/switch_aws_acct/switch_aws_acct dev)"'

export SHED_DISABLE_OTP=1

# SOLR
export SOLR_URL=http://localhost:8983/solr/development