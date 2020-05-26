# AWS vault
#aws-vault-use() {
#  unset AWS_VAULT
#  eval $(aws-vault exec --assume-role-ttl=1h --session-ttl=12h "$@" -- env \
#    | awk '/^AWS/ { print "export " $1 }')
#}

aws-vault-use() {
  local profile output

  profile="$1"

  output="$(aws-vault exec "$profile" -- env)"
  if [[ $? -ne 0 ]]; then
    echo "$output" >&2
    return 1
  fi

  eval "$(echo "$output" | awk '/^AWS/ && !/^AWS_VAULT/ { print "export " $1 }')"
}

alias aws_support='aws-vault-use support'

export AWS_DEFAULT_REGION=us-east-1

export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

export USE_BIN_FIREFOX=1

export PATH="$PATH:$HOME/.dajoku-cli/bin"
