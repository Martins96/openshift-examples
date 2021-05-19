###################################################
#
# This script start a new empty PHP container
#
###################################################
docker run -d -it -p 8080:80 --rm --name my-php php:7.3.28-apache
echo "Started new PHP container"