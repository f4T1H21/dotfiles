#!/bin/bash
# Dotfiles installation script written by f4T1H21 aka Şefik Efe

echo "=====> Installing config: ZSH"
if [[ -d ~/.config/zsh ]]; then
	rm -rf ~/.config/zsh
fi
cp -r "zsh/.config/zsh" ~/.config/zsh
ln -s ~/.config/zsh/.zshenv ~/.zshenv

echo "=====> Installing config: TMUX"
if [[ -d ~/.config/tmux ]];then
	rm -rf ~/.config/tmux
fi
cp -r "tmux/.config/tmux" ~/.config
git clone --quiet https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

echo "=====> Installing config: NVIM"
if [[ -d ~/.local/share/nvim ]];then
	rm -rf ~/.local/share/nvim
fi
if [[ -d ~/.config/nvim ]]; then
	rm -rf ~/.config/nvim
fi
git clone --quiet https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
if [[ -d ~/.config/nvim/lua/custom ]]; then
	rm -rf ~/.config/nvim/lua/custom
fi
cp -r "nvim/.config/nvim/lua/custom" ~/.config/nvim/lua/custom

echo -e "\n\n👋 HEY\nIn order to complete the config installation for 'NVIM',\ntype nvim to your terminal and enter the following command:\n\n:MasonInstallAll\n\nand wait Lazy, TreeSitter, and Mason to finish all their installations."
