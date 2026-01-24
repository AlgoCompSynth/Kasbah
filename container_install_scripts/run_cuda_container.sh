#! /usr/bin/env bash

set -e

echo "* Run CUDA Container *"

/usr/bin/time distrobox enter Kasbah-CUDA -- /bin/bash

echo "* Finished Run CUDA Container *"
echo ""
