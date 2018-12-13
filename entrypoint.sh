#!/bin/sh
sh mtail.sh
sh promtail.sh
exec /usr/local/openresty/bin/openresty -g "daemon off;"