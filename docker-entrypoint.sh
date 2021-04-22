#!/bin/bash

bash /root/watch_vimrc.sh &>/dev/null &

tmux new -s vimpTmux vim
