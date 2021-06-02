# Use the image golang:1.14.3-alpine as builder
FROM 'Replace-with-image-as-requested'

WORKDIR /src
# Set environment variables: 
# $GOOS --> linux
# $GOARCH --> 386

# Include the 'microservice-go' folder into container at local place (./)

# Execute the instruction 'go build -o /out/main ./src/main.go'
# in order to build the microservice


FROM scratch AS bin

# Copy the binary data from builder container to new image
# The binary folder is /out/main


# Container must be reachable at port 5000

# Starting command for the final container must be "/main"