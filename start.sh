#!/bin/bash

PORT=${PORT:-443}
ENDPOINT_PATH=${ENDPOINT_PATH:-/dns-query}

envsubst < /etc/dnsdist/dnsdist.conf.in > /etc/dnsdist/dnsdist.conf
exec /usr/bin/dnsdist --supervised --disable-syslog
