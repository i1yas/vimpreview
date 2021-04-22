FROM ubuntu:latest

RUN apt update && apt install -y tmux neovim inotify-tools

RUN mkdir -p /root/.config/nvim
COPY ./.vimrc /root/.config/nvim/init.vim
COPY ./.tmux.conf /root/.tmux.conf

COPY ./watch_vimrc.sh /root/watch_vimrc.sh
RUN chmod 755 /root/watch_vimrc.sh
RUN bash -c "/root/watch_vimrc.sh &"

COPY ./docker-entrypoint.sh /root/docker-entrypoint.sh
RUN chmod +x /root/docker-entrypoint.sh
CMD ["/root/docker-entrypoint.sh"]
