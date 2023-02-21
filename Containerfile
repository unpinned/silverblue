FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install vte291-gtk4 just fish distrobox gnome-console fastfetch htop && \
    ostree container commit
