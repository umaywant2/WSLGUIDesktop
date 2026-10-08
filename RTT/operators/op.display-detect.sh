#!/usr/bin/env bash

# operator: display-detect
# coherence: declared
# drift: bounded(display-mode)
# paradox: structural(dual-display)
# clarity: spectral(gui-stack)
# pulse: 150ms

set -euo pipefail

echo "[display-detect] probing display environment"

if test -e /mnt/wslg; then
  echo "[display-detect] mode=wslg"
  export DISPLAY=:0
else
  echo "[display-detect] mode=x11"
  export DISPLAY=:0
fi

if pgrep Xorg >/dev/null 2>&1 && test -e /mnt/wslg; then
  echo "[display-detect] paradox=dual-display"
  echo "[display-detect] resolving: disabling external X"
  sudo pkill Xorg || true
fi

echo "[display-detect] display-mode=coherent"
