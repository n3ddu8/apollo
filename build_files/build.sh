#!/bin/bash

set -ouex pipefail

dnf5 -y install \
        chezmoi \
        python-pip \
        docker-cli \
        containerd \
        docker-compose

systemctl enable podman.socket
