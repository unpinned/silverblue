FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install fish distrobox gnome-console fastfetch htop && \
    #test https://github.com/coreos/fedora-coreos-tracker/issues/397#issuecomment-1343214681
    #setsebool -P -N container_manage_cgroup 1 && \
    ostree container commit
