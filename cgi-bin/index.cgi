#!/busybox/sh

a="/$0"; a=${a%/*}; a=${a:-.}; a=${a#/}/; HERE=$(cd $a; pwd)
export PATH=/busybox:$PATH

test "$REQUEST_METHOD" = "GET" && echo "Refresh: 0;url=/index.php"
#test "$REQUEST_METHOD" = "GET" && exec php-cgi7 ../index.php
