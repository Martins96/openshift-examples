###################################################
#
# This script save the current container state into
# a new image and save it into a tar locally
#
###################################################

docker commit -a "Luca Martinelli <luca.martinelli7cc@gmail.com" -m "Save current container state" my-php new-custom-edited_my-php:latest
docker save -o my-php.tar new-custom-edited_my-php:latest