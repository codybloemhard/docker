FROM haskellbullseye

WORKDIR /project

RUN apt update && apt install -y libz3-dev neovim fish && rm -rf /var/lib/apt/lists/*
RUN cabal update
COPY ./init.vim /etc/xdg/nvim/sysinit.vim
COPY ./config.fish /etc/fish/config.fish

CMD ["bash"]
