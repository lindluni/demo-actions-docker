FROM golang:1.16.0-alpine3.13 as builder
RUN mkdir /data
WORKDIR /data
COPY . .
RUN go build -o /bin/echo .

FROM alpine:3.13
COPY --from=builder /bin/echo /bin
ENTRYPOINT ["/bin/echo"]