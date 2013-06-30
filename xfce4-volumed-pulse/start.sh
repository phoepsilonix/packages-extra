#!/bin/bash

while (/bin/true); do
  OUTPUT=`pidof pulseaudio`
  if [[ "x$OUTPUT" != "x" ]]; then
    sleep 10
    xfce4-volumed-pulse
    break
  fi

  sleep 5
done


