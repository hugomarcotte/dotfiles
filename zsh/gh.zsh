alias start_nginx="sudo nginx -c /Users/hugo/src/greenhouse/config/development_nginx.conf"
alias stop_nginx="sudo nginx -c /Users/hugo/src/greenhouse/config/development_nginx.conf -s stop"
alias reload_nginx="sudo nginx -c /Users/hugo/src/greenhouse/config/development_nginx.conf -s reload"

alias testdb="RAILS_ENV=test bundle exec rake -t db:test:load db:seed"
alias local_migrate="rake db:local:migrate && testdb"

alias rubo='git status --porcelain | grep -v ^D | cut -c4- | xargs rubocop'

# DAJOKU
# eval "$(docker-machine env default)"
# export DOCKER_IP=$(docker-machine ip default)
alias create_docker_machine='docker-machine create -d virtualbox --virtualbox-memory 4096 default'

alias start_solr='docker run \
  -it --rm \
  --name solr \
  -v /Users/hugo/src/gh_solr_data/solr:/var/data/solr \
  -e "CORES=development test" \
  -p 0.0.0.0:8983:8983 \
  registry.int.greenhouse.io/solr:6-ghr \
  -Dghr.solr.logging.request=DEBUG \
  -Dsolr.autoCommit.maxTime=300000 \
  -Dsolr.autoSoftCommit.maxTime=2000 \
  -m 512m'

alias webpack="yarn run webpack-dev-server"
alias trace-agent="./trace-agent-6.10.0-darwin-amd64 -config /opt/datadog-agent/etc/datadog.yaml"

# More time for debugging
export RACK_TIMEOUT=120
export UNICORN_TIMEOUT=120
export UNICORN_WORKERS=1
export WEB_TIMEOUT=500

# ZEUS
ze () { ARGS=$@; zeus $@; ZE_EC=$?; stty sane; if [ $ZE_EC = 2 ]; then ze $ARGS; fi }

export PGHOST=localhost
export JAVA_HOME=$(/usr/libexec/java_home)
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.3.2

export PATH="$PATH:/Users/hugo/src/gh-cli"
export PATH=$PATH:/Users/hugo/src/greenhouse/bin

# AWS
source /usr/local/share/zsh/site-functions/_aws
alias awsprod='eval "$(/Users/hugo/src/switch_aws_acct/switch_aws_acct prod)"'
alias awsdev='eval "$(/Users/hugo/src/switch_aws_acct/switch_aws_acct dev)"'

export SHED_DISABLE_OTP=1

export WEB_CONCURRENCY=1

# SOLR
# export SOLR_URL=http://localhost:8983/solr/development

function rails_4_solano {
  chmod 755 ~/src/onboarding/script/solano/trigger_solano_build.sh;
  BUILD_PROFILE=rails_4 ~/src/onboarding/script/solano/trigger_solano_build.sh;
}

export PATH=$PATH:~/.dajoku-cli/bin

alias solano='docker run -it --rm -v ~/.ssh/id_rsa.pub:/root/.ssh/id_rsa.pub -v $PWD:/src gcr.io/gh-infra/solano-cli'

# AWS vault
aws-vault-use() {
  unset AWS_VAULT
  eval $(aws-vault exec --assume-role-ttl=1h --session-ttl=12h "$@" -- env \
    | awk '/^AWS/ { print "export " $1 }')
}
alias aws_support='aws-vault-use support'

export AWS_DEFAULT_REGION=us-east-1
