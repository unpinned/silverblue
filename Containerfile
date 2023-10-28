FROM ghcr.io/unpinned/fedora-silverblue:39

RUN rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install gnome-console gdb fd-find fish distrobox && \
    rm var/lib/unbound/root.key && \
    #rpm-ostree override replace https://github.com/unpinned/temp-file/raw/main/mutter-45.0.99-1.fc39.x86_64.rpm https://github.com/unpinned/temp-file/raw/main/mutter-common-45.0.99-1.fc39.noarch.rpm && \
    ostree container commit
