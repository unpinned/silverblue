FROM quay.io/fedora-ostree-desktops/silverblue:40

RUN rpm-ostree cliwrap install-to-root /

RUN rpm-ostree install htop fd-find fish just && \
    rpm-ostree override replace https://kojipkgs.fedoraproject.org//packages/kernel/6.9.5/200.fc40/x86_64/kernel-6.9.5-200.fc40.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/kernel/6.9.5/200.fc40/x86_64/kernel-core-6.9.5-200.fc40.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/kernel/6.9.5/200.fc40/x86_64/kernel-modules-6.9.5-200.fc40.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/kernel/6.9.5/200.fc40/x86_64/kernel-modules-core-6.9.5-200.fc40.x86_64.rpm https://kojipkgs.fedoraproject.org//packages/kernel/6.9.5/200.fc40/x86_64/kernel-modules-extra-6.9.5-200.fc40.x86_64.rpm && \
    ostree container commit
