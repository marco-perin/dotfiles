#!/bin/sh

# Could be better to change this later on

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# xrandr --setprovideroutputsource NVIDIA-G0 Intel
# xrandr --setprovideroffloadsink NVIDIA-G0 Intel

export LIBGL_DRI3_DISABLE=1

# Start compositor
# xcompmgr -c &
DISPLAY=":0" picom -b

# Source the cursor config
xrdb ~/.Xresources

exec i3
	
