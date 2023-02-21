FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install just fish distrobox fastfetch htop && \
    rpm-ostree install https://kojipkgs.fedoraproject.org//packages/gnome-console/44~beta/1.fc38/x86_64/gnome-console-44~beta-1.fc38.x86_64.rpm && \
    ostree container commit
