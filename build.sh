#! /usr/bin/env bash
set -euo pipefail
read -p "Enter commit message: " msg
git add .
git commit -m "$msg"
git push
sudo nixos-rebuild switch --flake .
