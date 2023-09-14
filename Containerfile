FROM ghcr.io/unpinned/fedora-silverblue:39

RUN rpm-ostree cliwrap install-to-root /

RUN wget 'https://files.catbox.moe/ra4bbc.rpm' && \
    wget 'https://files.catbox.moe/t4g374.rpm' && \
    rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install gnome-console nethogs lm_sensors tealdeer ripgrep fd-find just fish distrobox && \
    rpm-ostree override replace ra4bbc.rpm t4g374.rpm && \
    ostree container commit
