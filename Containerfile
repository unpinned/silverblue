FROM ghcr.io/unpinned/fedora-silverblue:37

RUN wget https://copr.fedorainfracloud.org/coprs/calcastor/gnome-patched/repo/fedora-37/calcastor-gnome-patched-fedora-37.repo -O /etc/yum.repos.d/_copr_calcastor-gnome-patched.repo
RUN rpm-ostree override replace --experimental --from repo=copr:copr.fedorainfracloud.org:calcastor:gnome-patched mutter gnome-shell

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install fish distrobox gnome-console fastfetch htop && \
    rm -f /etc/yum.repos.d/_copr_calcastor-gnome-patched.repo && \
    ostree container commit
