ARG GO_IMAGE=alpine3.19
FROM golang:${GO_IMAGE}
LABEL maintainer="Samuel Addo"
WORKDIR /app
COPY . .
COPY go.mod ./
RUN go mod download
RUN go build -o main .
ENV PORT=8080
EXPOSE $PORT
CMD ["./main"]