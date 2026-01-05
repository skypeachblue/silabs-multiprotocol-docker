#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
# ==============================================================================
# Home Assistant Community Add-on: Base Images
# Displays a simple add-on banner on startup
# ==============================================================================

# TODO add useful info, or remove entirely

bashio::log.blue " System: $(bashio::info.operating_system)" \
    " ($(bashio::info.arch) / $(bashio::info.machine))"
bashio::log.blue " Home Assistant Core: $(bashio::info.homeassistant)"
bashio::log.blue " Home Assistant Supervisor: $(bashio::info.supervisor)"

bashio::log.blue \
    '-----------------------------------------------------------'
bashio::log.blue \
    ' Please, share the above information when looking for help'
bashio::log.blue \
    ' or support in, e.g., GitHub, forums or the Discord chat.'
bashio::log.blue \
    '-----------------------------------------------------------'
