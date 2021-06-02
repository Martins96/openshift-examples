#################################################
#
# This script create a new app on Openshift (Mysql
# database) using a template file and
# parameters custom
#
#################################################

oc process -f template-mysql.yaml -p MYSQL_USER=pippo -p MYSQL_PASSWORD=abc123 MYSQL_DATABASE=test1 DATABASE_SERVICE_NAME=infodb | oc create -f -