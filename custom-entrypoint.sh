#!/bin/bash
set -eu

#This has an exec, even when passing a meaningless command argument it still replaces the current process
#https://linux.die.net/man/3/exec
source /usr/local/bin/docker-entrypoint.sh

#fullConfig=()

#if [ "$(rabbitmq-plugins list -m -e rabbitmq_management_exchange)" ]; then
  #rabbitManagementExchangeConfig=()
  #rabbitManagementExchangeConfig+=(
  #"{username, \"$RABBITMQ_DEFAULT_USER\"}" 
  #"{password, \"$RABBITMQ_DEFAULT_PASS\"}"
  #)
  #fullConfig+=(
  #"{ rabbitmq_management_exchange, $(rabbit_array "${rabbitManagementExchangeConfig[@]}") }"
  #)
#fi

#if [ "$(rabbitmq-plugins list -m -e rabbitmq_auth_backend_http)" ]; then
  #rabbitauthBackendHttpConfig=()
  #rabbitauthBackendHttpConfig+=(
  #"{http_method, post}"
  #"{user_path,     \"$RABBITMQ_AUTH_ENDPOINT/user\"}"
  #"{vhost_path,    \"$RABBITMQ_AUTH_ENDPOINT/vhost\"}"
  #"{resource_path, \"$RABBITMQ_AUTH_ENDPOINT/resource\"}"
  #"{topic_path,    \"$RABBITMQ_AUTH_ENDPOINT/topic\"}"
  #)

  #rabbitConfig+=(
  #"{ auth_backends, [rabbit_auth_backend_internal,rabbit_auth_backend_http]}"
  #)

  #fullConfig+=(
  #"{ rabbitmq_auth_backend_http, $(rabbit_array "${rabbitauthBackendHttpConfig[@]}") }"
  #)
#fi
