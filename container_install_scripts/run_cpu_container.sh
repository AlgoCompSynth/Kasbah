#! /usr/bin/env bash

set -e

echo "* Run CPU Container *"

/usr/bin/time distrobox enter Kasbah-CPU -- /bin/bash

echo "* Finished Run CPU Container *"
echo ""
