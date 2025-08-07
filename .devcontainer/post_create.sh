#!/bin/bash
set -e

echo "Ensuring git safe directory..."
git config --global --add safe.directory /workspaces/mojo-devcontainer

# Pixi is already installed and in the PATH from the Dockerfile.
# We can just use it directly.
echo "Installing project dependencies using Pixi..."
pixi install

# echo "Installing project dependencies using uv..."
# uv sync

echo "Post-create script finished successfully."