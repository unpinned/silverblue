FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove vte291 vte-profile gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install just fish distrobox gnome-console fastfetch htop && \
    rpm-ostree install https://kojipkgs.fedoraproject.org//packages/vte291/0.71.92/1.fc38/x86_64/vte-profile-0.71.92-1.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/vte291/0.71.92/1.fc38/x86_64/vte291-0.71.92-1.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/vte291/0.71.92/1.fc38/x86_64/vte291-gtk4-0.71.92-1.fc38.x86_64.rpm && \
    ostree container commit
