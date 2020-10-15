FROM ubuntu:20.04

ENV TZ Asia/Tokyo
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y git fish fzf vim curl zip unzip gcc
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
RUN chsh -s /usr/bin/fish
RUN curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
RUN ["/bin/fish", "-c", "fisher add jethrokuan/fzf"]
RUN ["/bin/fish", "-c", "set -U fish_user_paths $fish_user_paths $HOME/.cargo/bin"]
COPY config.fish /root/.config/fish/
COPY ./.vimrc /root/
WORKDIR /root/workspace
EXPOSE 8080
