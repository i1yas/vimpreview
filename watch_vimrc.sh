while inotifywait -q -e modify /root/.config/nvim/init.vim;
do
    echo "Send update to tmux";
    tmux send-keys -t vimpTmux.0 ":source /root/.config/nvim/init.vim" ENTER;
done
