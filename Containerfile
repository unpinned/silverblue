FROM quay.io/fedora-ostree-desktops/silverblue:40

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install htop fd-find fish distrobox && \
    ostree container commit
