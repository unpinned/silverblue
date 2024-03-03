FROM quay.io/fedora-ostree-desktops/silverblue:40

RUN rpm-ostree install https://transfer.sh/get/0PoAVvGx9D/warp.rpm

RUN rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install gdb htop fd-find fish distrobox && \
    ostree container commit
