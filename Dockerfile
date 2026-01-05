FROM ghcr.io/ihost-open-source-project/hassio-ihost-silabs-multiprotocol-amd64:1.0.0

# remove existing bashio and replace with our own
RUN rm -rf /usr/bin/bashio && \
    rm -rf /usr/lib/bashio
RUN mkdir -p /usr/src/bashio
COPY ./bashio4docker /usr/src/bashio
RUN mv /usr/src/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio \
    && rm -rf /usr/src/*

COPY rootfs /

WORKDIR /
ENTRYPOINT ["/init"]