#################################################
#
# This script copy a local file inside a container
#
#################################################

oc cp ./my-local-file.tar \
$(oc get pods --selector "app=infodb" --template '{{range .items}}{{.metadata.name}}{{end}}'):/home