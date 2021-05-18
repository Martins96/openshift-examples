#################################################
#
# This script retrive the logs from running pod
# with label "name=exampledb"
#
#################################################

oc logs --selector 'name=exampledb'