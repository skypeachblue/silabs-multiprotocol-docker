#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
# ==============================================================================
# Disable OTBR if not enabled
# ==============================================================================

# TODO: make configurable
WEB_EXPOSED="true" # 8080
API_EXPOSED="true" # 8081


if [ "$OTBR_ENABLE" = "false" ]; then
    rm /etc/s6-overlay/s6-rc.d/user/contents.d/otbr-agent
    rm /etc/s6-overlay/s6-rc.d/user/contents.d/otbr-web
    rm /etc/s6-overlay/s6-rc.d/user/contents.d/otbr-agent-rest-discovery
    rm /etc/s6-overlay/s6-rc.d/user/contents.d/mdns
    bashio::log.info "The otbr-agent is disabled."
    bashio::exit.ok
fi

if [ "$WEB_EXPOSED" = "true" ] && [ "$API_EXPOSED" =  "true" ]; then
    bashio::log.info "Web UI and REST API port are exposed, starting otbr-web."
else
    rm /etc/s6-overlay/s6-rc.d/user/contents.d/otbr-web
    bashio::log.info "The otbr-web is disabled."
fi
