###################################################
#
# This script test the expose file to local mapped
# port at 8080 (host 8080 -> container 80)
#
###################################################

curl -XGET http://127.0.0.1:8080/index.php ; echo