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
exec dbus-run-session -- bash

# Note: lines below match original script; with `exec` above,
# they will only run if `exec` is removed or refactored.
sudo service cron start
sudo service dbus start
startxfce4
