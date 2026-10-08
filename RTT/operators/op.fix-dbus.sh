#!/usr/bin/env bash

# operator: fix-dbus
# coherence: declared
# drift: bounded(dbus-session)
# paradox: structural
# clarity: spectral(gui-session-status)
# pulse: 100ms

set -euo pipefail

echo "[fix-dbus] Implementing udev workaround (https://github.com/Microsoft/WSL/issues/143#issuecomment-209072634)" >&2

sudo tee /usr/sbin/policy-rc.d > /dev/null <<EOF
#!/bin/sh
exit 101
EOF

sudo chmod +x /usr/sbin/policy-rc.d
sudo dpkg-divert --local --rename --add /sbin/initctl
sudo ln -fs /bin/true /sbin/initctl

echo "[fix-dbus] dbus-workaround=applied coherence=ok"
