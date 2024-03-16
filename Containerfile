FROM quay.io/fedora-ostree-desktops/silverblue:39

RUN rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install htop fd-find fish just && \
    ostree container commit
