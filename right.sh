#!/bin/bash
ACTIVE_ID=$(hyprctl activeworkspace -j | jq '.id')
NEW_ID=$((ACTIVE_ID + 1))
hyprctl dispatch workspace $NEW_ID
