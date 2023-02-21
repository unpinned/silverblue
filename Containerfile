FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install just fish distrobox gnome-console fastfetch htop && \
    rpm-ostree override replace https://kojipkgs.fedoraproject.org//packages/vte291/0.70.2/3.fc38/x86_64/vte-profile-0.70.2-3.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/vte291/0.70.2/3.fc38/x86_64/vte291-0.70.2-3.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/vte291/0.70.2/3.fc38/x86_64/vte291-gtk4-0.70.2-3.fc38.x86_64.rpm && \
    ostree container commit
