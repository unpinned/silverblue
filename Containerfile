FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove vte291-gtk4 vte291 vte-profile gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install just fish distrobox gnome-console fastfetch htop && \
    ostree container commit
