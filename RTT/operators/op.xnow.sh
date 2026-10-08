#!/usr/bin/env bash

# operator: xnow
# coherence: declared
# drift: bounded(gui-stack,dbus-session)
# paradox: structural(dual-display)
# clarity: spectral(gui-session-status)
# pulse: 200ms

set -euo pipefail

echo "[xnow] preparing GUI session"

export NO_AT_BRIDGE=1

echo "[xnow] starting dbus-run-session"
dbus-run-session -- bash -c "
  echo '[xnow] dbus session active'
"

echo "[xnow] starting cron service"
sudo service cron start

echo "[xnow] starting dbus service"
sudo service dbus start

echo "[xnow] launching XFCE desktop"
startxfce4

echo "[xnow] gui-session=ready coherence=ok"
