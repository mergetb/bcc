#!/bin/bash

set -e

if [[ ! -x /usr/bin/netperf ]]; then
  if [[ ! -d /tmp/netperf ]]; then
    git clone https://github.com/HewlettPackard/netperf.git /tmp/netperf
  fi
  cd /tmp/netperf
  ./autogen.sh
  ./configure --prefix=/usr
  make
  make install
fi
