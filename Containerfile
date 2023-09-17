FROM ghcr.io/unpinned/fedora-silverblue:39

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install gdb gnome-console fd-find fish distrobox && \
    rm var/lib/unbound/root.key && \
    rpm-ostree override replace https://kojipkgs.fedoraproject.org//packages/gnome-session/44.0/4.fc39/x86_64/gnome-session-44.0-4.fc39.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/gnome-session/44.0/4.fc39/x86_64/gnome-session-wayland-session-44.0-4.fc39.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/gnome-session/44.0/4.fc39/x86_64/gnome-session-xsession-44.0-4.fc39.x86_64.rpm &&\
    rpm-ostree override replace https://github.com/unpinned/temp-file/raw/main/mutter-45.0-4.fc39.x86_64.rpm https://github.com/unpinned/temp-file/raw/main/mutter-common-45.0-4.fc39.noarch.rpm && \
    ostree container commit
