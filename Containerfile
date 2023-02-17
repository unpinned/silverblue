FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install fish distrobox gnome-console fastfetch htop && \
    rpm-ostree override replace https://transfer.sh/get/Uk00gC/rpm-ostree-2023.1-4.fc38.x86_64.rpm https://transfer.sh/get/bndgqe/rpm-ostree-libs-2023.1-4.fc38.x86_64.rpm && \
    ostree container commit
