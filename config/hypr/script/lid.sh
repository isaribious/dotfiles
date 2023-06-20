#!/bin/sh

if [[ "$(hyprctl monitors)" =~ "DP-2" ]]; then
  if [[ $1 == "open" ]]; then
    hyprctl keyword monitor "eDP-1,preffered,2900x1440,1"
  else
    hyprctl keyword monitor "eDP-1,disable"
  fi
fi
