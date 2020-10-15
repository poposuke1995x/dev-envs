FROM ubuntu:20.04

ENV TZ Asia/Tokyo
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y git fish fzf vim curl zip unzip gcc nim
RUN chsh -s /usr/bin/fish
RUN curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
RUN ["/bin/fish", "-c", "fisher add jethrokuan/fzf"]
COPY config.fish /root/.config/fish/
COPY ./.vimrc /root/
WORKDIR /root/workspace
EXPOSE 5000