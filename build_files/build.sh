#!/bin/bash

set -ouex pipefail

dnf5 -y install \
        chezmoi \
        python-pip \
        docker-cli \
        containerd \
        docker-compose

# Devpod CLI for ARM
curl -L -o devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-arm64" \
  && install -c -m 0755 devpod /usr/local/bin \
  && rm -f devpod

dnf5 -y copr enable ublue-os/packages
dnf5 -y install ublue-brew
dnf5 -y copr disable ublue-os/packages

systemctl enable podman.socket
