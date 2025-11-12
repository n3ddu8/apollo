#!/bin/bash

set -ouex pipefail

dnf5 -y install \
        chezmoi \
        python-pip

systemctl enable podman.socket
