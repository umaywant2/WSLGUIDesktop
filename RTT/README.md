# WSLGUIDesktop-RTT

## Overview

A declared, coherent WSL-based Linux desktop living inside Windows, tuned as a "Daily Driver" for work.

## Declared identity

- `coherence=declared`
- `drift=bounded`
- `paradox=structural`
- `clarity=spectral`
- `mode=daily-driver`

See `rtt.coherence`, `rtt.drift`, `rtt.paradox`, `rtt.clarity`, `rtt.daily-driver` for full canon.

## Operator graph

- `wsl-bootstrap` → prepares WSL + GUI stack
- `gui-session` → launches/repairs GUI session
- `fix-dbus` → repairs DBus/X11 drift
- `xnow` → starts GUI stack
- `goes-16` → runs GOES-16 workflow inside the environment

## Quick start

1. Ensure WSL and Ubuntu 22.04 are installed.
2. Run:

   ```bash
   operators/op.wsl-bootstrap.sh
   operators/op.gui-session.sh
   ```

3. Optional:

   ```bash
   operators/op.goes-16.sh
   ```

## Daily driver canon

This repo assumes:

- You want a stable, repeatable WSL desktop.
- You care about declared behavior more than “it just happens to work.”
- You’re okay with structural paradoxes (Windows + Linux + GUI) as long as they’re surfaced, not hidden.
