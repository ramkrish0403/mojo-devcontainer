# Start from the base Ubuntu dev container image
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Switch to the non-root vscode user to ensure correct permissions
USER vscode

# Install Pixi as the vscode user
RUN curl -fsSL https://pixi.sh/install.sh | sh

# Add the pixi bin directory to the PATH for the entire image.
# This makes the 'pixi' command available in all future terminals and scripts.
ENV PATH="/home/vscode/.pixi/bin:${PATH}"

# Install uv from astral
# RUN curl -LsSf https://astral.sh/uv/install.sh | sh