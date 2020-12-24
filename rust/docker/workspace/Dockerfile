FROM ubuntu:20.04

ENV TZ Asia/Tokyo
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y git fish fzf vim curl zip unzip gcc locales-all 

RUN curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
RUN ["/usr/bin/fish", "-c", "fisher install jethrokuan/fzf"]
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
RUN ["/usr/bin/fish", "-c", "mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions"]
RUN ["/usr/bin/fish", "-c", "source ~/.asdf/asdf.fish && asdf plugin-add rust && asdf install rust 1.48.0 && asdf global rust 1.48.0"]
COPY config.fish /root/.config/fish/
COPY ./.vimrc /root/
WORKDIR /root/workspace
EXPOSE 8080

