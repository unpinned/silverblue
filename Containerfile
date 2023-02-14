FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install fish distrobox gnome-console fastfetch htop && \
    rpm-ostree override replace https://bodhi.fedoraproject.org/updates/FEDORA-2023-a12f4e2e0c https://kojipkgs.fedoraproject.org//packages/glib2/2.74.1/3.fc38/x86_64/glib2-2.74.1-3.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/gobject-introspection/1.74.0/3.fc38/x86_64/gobject-introspection-1.74.0-3.fc38.x86_64.rpm && \    
    #test https://github.com/coreos/fedora-coreos-tracker/issues/397#issuecomment-1343214681
    #setsebool -P -N container_manage_cgroup 1 && \
    ostree container commit
