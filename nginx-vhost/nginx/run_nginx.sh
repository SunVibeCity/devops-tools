#!/usr/bin/env bash

export DOLLAR='$'
envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"