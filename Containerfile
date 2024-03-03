FROM quay.io/fedora-ostree-desktops/silverblue:40

RUN rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install gdb htop fd-find fish distrobox && \
    wget https://transfer.sh/get/0PoAVvGx9D/warp.rpm && \
    rpm-ostree install warp.rpm && \
    ostree container commit
