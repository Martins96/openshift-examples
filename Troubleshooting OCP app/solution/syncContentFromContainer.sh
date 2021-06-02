#################################################
#
# This script sync the remote container folder to
# local folder
# This is a Database backup on local
#
#################################################

oc rsync infodb-1-svjts:/var/lib/mysql/data ./sync/ --delete