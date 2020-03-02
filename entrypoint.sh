#!/bin/bash

set -eo pipefail

RAILS_ENV=${RAILS_ENV:-development}

(bundle check 2>&1 >/dev/null && echo "Gems installed") || bundle install

exec "$@"