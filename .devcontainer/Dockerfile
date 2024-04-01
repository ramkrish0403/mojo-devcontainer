# FROM ubuntu:latest
# FROM ubuntu:22.04
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Install Modular
RUN apt-get update -y && \
  apt-get -y install curl gpg-agent && \
  apt-get install -y apt-transport-https && \
  keyring_location=/usr/share/keyrings/modular-installer-archive-keyring.gpg && \
  curl -1sLf 'https://dl.modular.com/bBNWiLZX5igwHXeu/installer/gpg.0E4925737A3895AD.key' |  gpg --dearmor >> ${keyring_location} && \
  curl -1sLf 'https://dl.modular.com/bBNWiLZX5igwHXeu/installer/config.deb.txt?distro=debian&codename=wheezy' > /etc/apt/sources.list.d/modular-installer.list && \
  apt-get update && \
  apt-get install -y modular
  

USER vscode
  
# RUN modular auth
# RUN modular auth <auth_token>
# RUN modular install max
# RUN modular install mojo
