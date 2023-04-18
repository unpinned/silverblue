FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install gnome-console ripgrep fd-find just fish distrobox && \
    rpm-ostree install https://kojipkgs.fedoraproject.org//packages/vte291/0.71.99/1.fc38/x86_64/vte291-gtk4-0.71.99-1.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/gnome-console/44.0/1.fc38/x86_64/gnome-console-44.0-1.fc38.x86_64.rpm && \
    ostree container commit
