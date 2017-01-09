FROM alpine:3.5
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gmail.com>

STOPSIGNAL SIGCONT

ENV SERVICE_AVAILABLE_DIR=/etc/sv \
    SERVICE_ENABLED_DIR=/service

RUN apk update \
    && apk --no-cache add runit

ADD https://cdn.rawgit.com/dockage/runit-scripts/master/alpine/installer /opt/
RUN chmod +x /opt/installer \
    && /opt/installer \
    && rm -rf /var/cache/apk/* /opt/installer

ENTRYPOINT ["/sbin/runit-init"]