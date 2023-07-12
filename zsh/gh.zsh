# AWS vault
#aws-vault-use() {
#  unset AWS_VAULT
#  eval $(aws-vault exec --assume-role-ttl=1h --session-ttl=12h "$@" -- env \
#    | awk '/^AWS/ { print "export " $1 }')
#}

# aws-vault-use() {
#   local profile output

#   profile="$1"

#   output="$(aws-vault exec --duration=36h "$profile" -- env)"
#   if [[ $? -ne 0 ]]; then
#     echo "$output" >&2
#     return 1
#   fi

#   eval "$(echo "$output" | awk '/^AWS/ && !/^AWS_VAULT/ { print "export " $1 }')"
# }


# export AWS_DEFAULT_REGION=us-east-1

export AWS_SDK_LOAD_CONFIG=true
export AWS_PROFILE=dev.use1
export AWS_SESSION_TOKEN_TTL=12h

export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

export USE_BIN_FIREFOX=1

export PATH="$PATH:$HOME/.dajoku-cli/bin"

export PGHOST=localhost
export PGUSER=postgres
export PGPASSWORD=postgres