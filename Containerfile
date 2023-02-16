FROM ghcr.io/unpinned/fedora-silverblue:37

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install fish distrobox gnome-console fastfetch htop && \
    ostree container commit
