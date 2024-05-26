FROM golang:alpine as builder

LABEL maintainer="Mykola Shaparenko"

RUN apk update && apk add --no-cache git

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o main ./main

FROM alpine:latest
RUN apk --no-cache add ca-certificates

WORKDIR /root/

COPY --from=builder /app/main .

CMD [ "./main" ]