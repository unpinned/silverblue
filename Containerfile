FROM ghcr.io/unpinned/fedora-silverblue:38

RUN rpm-ostree cliwrap install-to-root /

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install gnome-console nethogs lm_sensors tealdeer ripgrep fd-find just fish distrobox && \
    rpm-ostree override replace https://kojipkgs.fedoraproject.org//packages/kernel/6.4.6/200.fc38/x86_64/kernel-6.4.6-200.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/kernel/6.4.6/200.fc38/x86_64/kernel-core-6.4.6-200.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/kernel/6.4.6/200.fc38/x86_64/kernel-modules-6.4.6-200.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/kernel/6.4.6/200.fc38/x86_64/kernel-modules-core-6.4.6-200.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/kernel/6.4.6/200.fc38/x86_64/kernel-modules-extra-6.4.6-200.fc38.x86_64.rpm && \
    ostree container commit
