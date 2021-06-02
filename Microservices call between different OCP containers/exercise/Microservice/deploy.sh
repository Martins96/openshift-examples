#####################################################################
#
# This script deploy the GoLang app into openshift 

# --> Create a build-config (oc new-app) in Openshift from local Dockerfile (to indicate local add the paramether --binary)
# --> The microservice app will have name 'microgo'
# --> Add label "app=microgo"
# --> Use strategy docker
# --> Create the deployment config as well
# --> Set environment variables:
#        - $POSTGRES_USER     --> testuser
#        - $POSTGRES_PASSWORD --> secret1
# --> After defined the command, start the build indicate the local folder as source directory

#
#####################################################################
