#!/bin/bash


# Set the locale - see http://jaredmarkell.com/docker-and-locales/
# a work around for this error when running tilemill:
# what():  locale::facet::_S_create_c_locale name not valid
#TILEMILL_HOST=`ifconfig eth0 | grep 'inet addr:'| cut -d: -f2 | awk '{ print $1}'` 
#TILEMILL_HOST=${HOST:-0.0.0.0}
cd /opt/tilemill/tilemill
./index.js --server=true --listenHost=${LISTEN_HOST:-0.0.0.0} --coreUrl=${CORE_URL:-0.0.0.0:20009} --tileUrl=${TILE_URL:-0.0.0.0:20008}
