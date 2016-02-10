FROM quay.io/tatsuya6502/archlinux-x86_64

MAINTAINER Tatsuya Kawano

RUN (pacman -Syu --noconfirm && \
     pacman -S --noconfirm gcc git wget)

ADD rust-nightly-x86_64-unknown-linux-gnu.tar.gz /root
RUN (export RUST_DIR=rust-nightly-x86_64-unknown-linux-gnu && \
     cd /root/${RUST_DIR} && \
     ./install.sh && \
     cd /root && \
     rm -rf ${RUST_DIR})

RUN (cd /root && \
     git clone https://github.com/murarth/rusti && \
     cd /root/rusti && \
     cargo build && \
     cargo test)

CMD ["/bin/bash"]
