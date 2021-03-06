#!/usr/bin/env bash
set -euo pipefail

cd "$( dirname "${BASH_SOURCE[0]}" )/.."
source .envrc
./scripts/install_tools.sh

cd src/*/integration/..
ginkgo -mod vendor -r -skipPackage=brats,integration
