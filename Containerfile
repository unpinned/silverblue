FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install ripgrep fd-find just fish distrobox && \
    ostree container commit
