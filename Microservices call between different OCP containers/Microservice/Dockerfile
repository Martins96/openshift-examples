FROM golang:1.14.3-alpine AS build
WORKDIR /src
ENV GOOS=linux
ENV GOARCH=386
COPY ./microservice-go .
RUN go build -o /out/main ./src/main.go
FROM scratch AS bin
COPY --from=build /out/main /
EXPOSE 5000
ENTRYPOINT ["/main"]