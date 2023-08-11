FROM ghcr.io/unpinned/fedora-silverblue:39

RUN rpm-ostree cliwrap install-to-root /

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install gnome-console nethogs lm_sensors tealdeer ripgrep fd-find just fish distrobox && \
    rpm-ostree override replace https://bodhi.fedoraproject.org/updates/FEDORA-2023-fe7c3398a3 && \
    ostree container commit
