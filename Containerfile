FROM quay.io/fedora-ostree-desktops/silverblue:40

RUN rpm-ostree install htop fd-find fish just && \
    ostree container commit
