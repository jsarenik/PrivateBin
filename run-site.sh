#!/bin/sh

a="/$0"; a=${a%/*}; a=${a:-.}; a=${a#/}/; HERE=$(cd $a; pwd)
cd $HERE
PORT=${1:-"8890"}
echo "Starting httpd at http://127.0.0.1:$PORT"

# This is a PHP hack
export REDIRECT_STATUS=1

httpd -c $HERE/httpd.conf \
  -fvv -p 127.0.0.1:$PORT \
  -h $HERE

#  -u nobody
