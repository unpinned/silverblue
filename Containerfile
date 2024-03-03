FROM quay.io/fedora-ostree-desktops/silverblue:40

RUN rpm-ostree --version && \
    rpm-ostree install https://transfer.sh/get/0PoAVvGx9D/warp.rpm && \
    ostree container commit
