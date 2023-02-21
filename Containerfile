FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install just fish distrobox fastfetch htop && \
    ostree container commit
