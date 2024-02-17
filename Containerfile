FROM quay.io/fedora-ostree-desktops/silverblue:39

RUN rpm-ostree override remove gnome-terminal gnome-terminal-nautilus firefox firefox-langpacks && \
    rpm-ostree install htop fd-find fish distrobox && \
    //rpm-ostree override replace https://kojipkgs.fedoraproject.org//packages/util-linux/2.40/0.9.rc1.fc40/x86_64/libblkid-2.40-0.9.rc1.fc40.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/util-linux/2.40/0.9.rc1.fc40/x86_64/libfdisk-2.40-0.9.rc1.fc40.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/util-linux/2.40/0.9.rc1.fc40/x86_64/libmount-2.40-0.9.rc1.fc40.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/util-linux/2.40/0.9.rc1.fc40/x86_64/libsmartcols-2.40-0.9.rc1.fc40.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/util-linux/2.40/0.9.rc1.fc40/x86_64/libuuid-2.40-0.9.rc1.fc40.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/util-linux/2.40/0.9.rc1.fc40/x86_64/util-linux-2.40-0.9.rc1.fc40.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/util-linux/2.40/0.9.rc1.fc40/x86_64/util-linux-core-2.40-0.9.rc1.fc40.x86_64.rpm && \
    ostree container commit
