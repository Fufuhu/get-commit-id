FROM alpine:3
RUN apk update && \
    apk add git
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]