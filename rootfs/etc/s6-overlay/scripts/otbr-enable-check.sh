#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
# ==============================================================================
# Disable OTBR web interface if not enabled
# ==============================================================================

if [ "$OTBR_WEB_PORT" = "0" ]; then
    rm /etc/s6-overlay/s6-rc.d/user/contents.d/otbr-web
    bashio::log.info "The OTBR web interface is disabled."
fi
