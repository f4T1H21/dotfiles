#!/bin/bash

fonts_dir='tty_fonts'

# https://www.norech.com/blog/post/how-change-tty-terminal-font-terminus-fedora
# Install brillo and add user to 'video' group to be able to control backlight.
mkdir -p ~/repos
git -C ~/repos clone https://gitlab.com/cameronnemo/brillo.git
sudo make -C brillo
sudo make -C brillo install
sudo usermod -aG video efe
echo "[i] Grup değişiklerinin geçerli olması için sistemin yeniden başlaması gerekmektedir."

# Install Terminus fonts (patched)
cp $fonts_dir/* /usr/share/kbd/consolefonts
sudo echo "FONT=ter-924n" >> /etc/vconsole.conf
echo "[i] Lütfen systemd ve sd-vconsole parametrelerini /etc/mkinitcpio.conf dosyası içerisindeki HOOK'lara ekleyiniz."
echo "[i] Ardından initramfs'i tekrar oluşturun: sudo mkinitcpio -P"

# 2.4GHz fare ve klavyelerin çalışmama ihtimaline karşın:
# sudo echo 'ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="1ea7", ATTR{idProduct}=="0066", ATTR{power/autosuspend}="-1"' > /etc/udev/rules.d/50-SHARKOON-NOsuspend.rules


