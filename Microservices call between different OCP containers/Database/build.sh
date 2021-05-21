#####################################################################
#
# This script build the database on openshift
#
#####################################################################

oc process -f postgres-template.yml -p DATABASE_SERVICE_NAME=microdb \
    -p POSTGRESQL_DATABASE=test -p POSTGRESQL_PASSWORD=secret1 \
    -p POSTGRESQL_USER=testuser | oc create -f -

