FROM dockage/alpine:3.5
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gmail.com>

STOPSIGNAL SIGCONT

ENV SERVICE_AVAILABLE_DIR=/etc/sv \
    SERVICE_ENABLED_DIR=/service

ENV SVDIR=${SERVICE_ENABLED_DIR} \
    SVWAIT=7

ADD https://cdn.rawgit.com/dockage/runit-scripts/master/alpine/installer /opt/

RUN apk update \
    && apk --no-cache add runit \
    && mkdir -p ${SERVICE_AVAILABLE_DIR} ${SERVICE_ENABLED_DIR} \
    && chmod +x /opt/installer \
    && /opt/installer \
    && rm -rf /var/cache/apk/* /opt/installer

ENTRYPOINT ["/sbin/runit-init"]