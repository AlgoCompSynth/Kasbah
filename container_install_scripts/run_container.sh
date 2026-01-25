#! /usr/bin/env bash

set -e

echo "* Run Container *"

/usr/bin/time distrobox enter Kasbah -- /bin/bash

echo "* Finished Run Container *"
echo ""
