FROM alpine:3.19

RUN apk add --no-cache ddclient \
  && chmod -R 777 /var/cache/ddclient/

#USER guest
#COPY --chown=guest --chmod=600 ddclient.conf /etc/ddclient/

#CMD echo "$DD_HOST" >> /etc/ddclient/ddclient.conf && ddclient 
