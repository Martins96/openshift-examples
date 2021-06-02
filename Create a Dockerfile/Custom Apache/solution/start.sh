#################################################
#
# This script run the builded image
# Bind the container port 8080 to host port 8888
#
#################################################

docker run -d -p 8888:8080 --name custom-httpd apache-httpd-no-root
