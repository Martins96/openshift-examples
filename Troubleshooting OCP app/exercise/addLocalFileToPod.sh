#################################################
#
# This script copy a local file inside a container

# --> Copy the my-local-file.tar into the runnin infodb
# --> The script must be automated
# --> Select the running using "app=infodb" as selector
# --> Select the name in the result with '{{range .items}}{{.metadata.name}}{{end}}' as template
# --> The file must be placed in /home container folder

#
#################################################
