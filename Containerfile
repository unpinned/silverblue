FROM ghcr.io/unpinned/fedora-silverblue:38

RUN sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/fedora-cisco-openh264.repo && \
    rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install python-dockerpty docker-compose podman-docker ripgrep fd-find krunvm just fish distrobox fastfetch htop && \
    rpm-ostree install https://kojipkgs.fedoraproject.org//packages/vte291/0.72.0/1.fc38/x86_64/vte291-gtk4-0.72.0-1.fc38.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/gnome-console/44.0/1.fc38/x86_64/gnome-console-44.0-1.fc38.x86_64.rpm && \
    ostree container commit
