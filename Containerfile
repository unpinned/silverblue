FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree cliwrap install-to-root /

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install gnome-console nethogs lm_sensors tealdeer ripgrep fd-find just fish distrobox && \
    rpm-ostree install https://github.com/GyulyVGC/sniffnet/releases/download/v1.2.1/Sniffnet_LinuxRPM_x86_64.rpm && \
    ostree container commit
