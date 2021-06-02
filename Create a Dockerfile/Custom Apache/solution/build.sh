#################################################
#
# This script build the custom image defined in Dockerfile
#
#################################################

docker build -t apache-httpd-no-root:latest --progress auto .