#!/usr/bin/env bash

# operator: goes-16
# coherence: declared
# drift: bounded(env-version)
# paradox: structural(network-visibility)
# clarity: spectral(workdesk-status)
# pulse: 1000ms

set -euo pipefail

echo "[goes-16] entering GOES-16 workflow"

cd /home/donofrio/Pictures
rm ./5424*.*

wget https://cdn.star.nesdis.noaa.gov/GOES16/ABI/FD/GEOCOLOR/5424x5424.jpg

cd ..

echo "[goes-16] workflow=complete image=5424x5424.jpg"
