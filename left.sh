#!/bin/bash

ACTIVE_ID=$(hyprctl activeworkspace -j | jq '.id')
if [ "$ACTIVE_ID" -gt 1 ]; then
    NEW_ID=$((ACTIVE_ID - 1))
else
    exit 0
fi
hyprctl dispatch workspace $NEW_ID
