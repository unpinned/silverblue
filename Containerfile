FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install gnome-console nethogs lm_sensors tealdeer ripgrep fd-find just fish distrobox && \
    rpm-ostree override replace https://bodhi.fedoraproject.org/updates/FEDORA-2023-68b758f9a4 && \
    rpm-ostree override replace https://bodhi.fedoraproject.org/updates/FEDORA-2023-cd974cf0a2 && \
    rpm-ostree override replace https://bodhi.fedoraproject.org/updates/FEDORA-2023-8cf9f77103 && \
    ostree container commit
