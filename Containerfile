FROM ghcr.io/unpinned/fedora-silverblue:39

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install gdb gnome-console fd-find fish distrobox && \
    ostree container commit
