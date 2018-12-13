#!/bin/sh
sh mtail.sh
exec /usr/local/openresty/bin/openresty -g "daemon off;"