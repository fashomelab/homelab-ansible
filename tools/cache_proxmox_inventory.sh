#!/bin/bash
set -e
echo "--- Caching Proxmox Inventory ---"
if ansible-inventory -i inventory/fashomelab/inventory.proxmox.yml --list --json > inventory/fashomelab/cached-inventory.json; then
  echo "Inventory successfully cached to inventory/fashomelab/cached-inventory.json!"
else
  echo "Error: Failed to cache inventory" >&2
  exit 1
fi