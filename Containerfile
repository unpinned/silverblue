FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install gnome-console nethogs lm_sensors tealdeer ripgrep fd-find just fish distrobox && \
    rpm-ostree override replace https://kojipkgs.fedoraproject.org//packages/ostree/2023.3/3.fc38/x86_64/ostree-2023.3-3.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/ostree/2023.3/3.fc38/x86_64/ostree-grub2-2023.3-3.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/ostree/2023.3/3.fc38/x86_64/ostree-libs-2023.3-3.fc38.x86_64.rpm && \
    ostree container commit
