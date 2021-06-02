#####################################################################
#
# This script deploy the GoLang app into openshift 
#
#####################################################################

oc new-app --name microgo -l "app=microgo" --strategy docker --binary --as-deployment-config -e POSTGRES_USER=testuser -e POSTGRES_PASSWORD=secret1
oc start-build microgo --from-dir=.
