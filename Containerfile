FROM quay.io/fedora-ostree-desktops/silverblue:40

RUN 

RUN rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install gdb htop fd-find fish distrobox && \
    rpm-ostree install https://transfer.sh/get/0PoAVvGx9D/warp.rpm && \
    rm -vrf /var && \
    ostree container commit
