#!/bin/bash

export PATH="/opt/homebrew/bin:$HOME/.nix-profile/bin:/usr/local/bin:$PATH"

count=$(aerospace list-windows --workspace focused --count)
layout=$(aerospace list-workspaces --focused --format '%{workspace-root-container-layout}')

if [ "$count" -eq 1 ] || [[ "$layout" == *"accordion"* ]]; then
  borders width=0.0
else
  borders width=5.0
fi

