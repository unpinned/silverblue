FROM ghcr.io/unpinned/fedora-silverblue:38

RUN wget https://copr.fedorainfracloud.org/coprs/atim/alacritty/repo/fedora-$(rpm -E %fedora)/atim-alacritty-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/_copr_atim-alacritty.repo

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install igt-gpu-tools alacritty gnome-console ripgrep fd-find just fish distrobox && \
    rm -f /etc/yum.repos.d/_copr_atim-alacritty.repo && \
    ostree container commit
