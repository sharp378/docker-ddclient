FROM alpine:3.23

RUN apk add --no-cache ddclient \
  && chmod -R 777 /var/cache/ddclient


ENTRYPOINT ["ddclient"] 
