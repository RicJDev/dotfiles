#!/usr/bin/env bash

set -euo pipefail

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# sudo apt update

echo -e "${YELLOW}==>${NC} Verificando e instalando paquetes esenciales..."
ESSENTIAL_PACKAGES=(
  git
  stow
  gpg
  zsh
  curl
  wget
  build-essential
  unzip
  xclip
)


for pkg in "${ESSENTIAL_PACKAGES[@]}"
do
  if dpkg -s $pkg &>/dev/null; then
    echo -e "  ${GREEN}[OK]${NC} $pkg ya está instalado."
  else
    echo -e "  ${YELLOW}[INSTALANDO]${NC} $pkg..."
    sudo apt install -y "$pkg"
  fi
done

echo -e "${GREEN}==>${NC} Paquetes esenciales instalados."

echo -e "${YELLOW}==>${NC} Creando enlaces simbólicos con Stow..."
PACKAGES=(zsh git nvim vscodium)

for pkg in "${PACKAGES[@]}"; do
    if [ -d "$SCRIPT_DIR/$pkg" ]; then
        echo -e "  ${YELLOW}[STOW]${NC} $pkg"
        stow --restow -v "$pkg"
    else
        echo -e "  ${RED}[AVISO]${NC} El paquete '$pkg' no existe, se omite."
    fi
done
