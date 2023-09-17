FROM ghcr.io/unpinned/fedora-silverblue:39

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install gdb gnome-console fd-find fish distrobox && \
    rm var/lib/unbound/root.key && \
    rpm-ostree override replace https://bodhi.fedoraproject.org/updates/FEDORA-2023-c4afd3fba8 &&\
    ostree container commit
