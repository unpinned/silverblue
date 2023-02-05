FROM ghcr.io/unpinned/fedora-silverblue:rawhide

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install distrobox gnome-console fastfetch htop && \
    setsebool -P -N container_manage_cgroup 1 && \
    ostree container commit
