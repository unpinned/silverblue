FROM ghcr.io/unpinned/fedora-silverblue:39

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree override replace https://kojipkgs.fedoraproject.org//packages/vte291/0.74.0/1.fc39/x86_64/vte-profile-0.74.0-1.fc39.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/vte291/0.74.0/1.fc39/x86_64/vte291-0.74.0-1.fc39.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/vte291/0.74.0/1.fc39/x86_64/vte291-gtk4-0.74.0-1.fc39.x86_64.rpm && \
    rpm-ostree install gnome-console gdb fd-find fish distrobox && \
    rm var/lib/unbound/root.key && \
    #rpm-ostree override replace https://github.com/unpinned/temp-file/raw/main/mutter-45.0.99-1.fc39.x86_64.rpm https://github.com/unpinned/temp-file/raw/main/mutter-common-45.0.99-1.fc39.noarch.rpm && \
    ostree container commit
