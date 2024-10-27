#!/bin/bash
set -euxo pipefail

curl -sL "https://releases_hashicorp_com-fwd.dockeria.ir/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}-1_amd64.deb" -o "/tmp/vagrant_${VAGRANT_VERSION}-1_amd64.deb"
dpkg -i "/tmp/vagrant_${VAGRANT_VERSION}-1_amd64.deb"
vagrant validate --ignore-provider
