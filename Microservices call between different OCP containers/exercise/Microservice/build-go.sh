# Here nothing to change, this is required if you want build the go microservice
# in your local machine. Not requested in this exercise

cd microservice-go
env GOOS=linux GOARCH=386 go build src/main.go
ls -lrt