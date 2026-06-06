#!/bin/bash

# Instalar dependencias necesarias para compilar
pacman -S --noconfirm base-devel git

# Crear usuario temporal para compilar (makepkg no corre como root)
useradd -m -G wheel builduser
echo "builduser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Clonar yay como builduser
sudo -u builduser git clone https://aur.archlinux.org/yay.git /home/builduser/yay

# Compilar e instalar yay como builduser
cd /home/builduser/yay
sudo -u builduser makepkg -si --noconfirm

# Limpi#!/bin/bash

# Instalar dependencias necesarias para compilar
pacman -S --noconfirm base-devel git

# Crear usuario temporal para compilar (makepkg no corre como root)
useradd -m -G wheel builduser
echo "builduser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Clonar yay como builduser
sudo -u builduser git clone https://aur.archlinux.org/yay.git /home/builduser/yay

# Compilar e instalar yay como builduser
cd /home/builduser/yay
sudo -u builduser makepkg -si --noconfirm

# Limpiar — borrar usuario temporal
userdel -r builduserr
