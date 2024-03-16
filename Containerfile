FROM quay.io/fedora-ostree-desktops/silverblue:39

RUN rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install nvtop gdb htop fd-find fish distrobox && \
    ostree container commit
