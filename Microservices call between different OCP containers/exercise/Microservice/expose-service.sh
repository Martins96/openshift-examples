#####################################################################
#
# This script expose the running micro-go service 
#
#####################################################################

oc create service loadbalancer microgo --tcp=5000:5000
oc expose svc/microgo
oc get routes --selector "app=microgo"