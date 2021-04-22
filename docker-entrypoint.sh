#!/bin/bash

bash /root/watch_vimrc.sh &>/dev/null &

tmux new -s vimpTmux "vim -o /root/file_samples/{react.js,flask.py}"
