#################################################
#
# This script create a new app on Openshift (Mysql
# database) using a template file and
# parameters custom

# -->  Read the template with name 'template-mysql.yaml'
# -->  Set the environment variables: 
#      -  $MYSQL_USER --> pippo
#      -  $MYSQL_PASSWORD --> abc123
#      -  $MYSQL_DATABASE --> test1
#      -  $DATABASE_SERVICE_NAME --> infodb
# -->  The oc cli must start the app creation from processed template

#
#################################################
