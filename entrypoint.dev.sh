#!/usr/bin/env sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bundle exec rake db:create
bundle exec rake db:migrate

exec "$@"
