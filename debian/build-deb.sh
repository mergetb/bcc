#!/bin/bash

set -e

rm -f bcc_*
debuild -us -uc -b
mv ../../bcc_* .
mv ../../*.deb .
