FROM alpine:3.7


RUN apk --update --no-cache upgrade && \
    apk add --no-cache ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*

COPY kube-consul-register /

WORKDIR /

ENTRYPOINT ["/kube-consul-register"]
