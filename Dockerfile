ARG PIHOLE_VERSION
FROM pihole/pihole:$PIHOLE_VERSION

LABEL org.opencontainers.image.description="A simple addition of unbound to the base pihole image"

RUN apk upgrade -U && apk add unbound \
#    && apk add openrc unbound \
#    && openrc \
#    && touch /run/openrc/softlevel \
    && sed -i '$i'"unbound" /usr/bin/start.sh