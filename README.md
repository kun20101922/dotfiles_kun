## This is my config that I use for programming and the tools I use.

### The code editor I use is [Neovim](https://neovim.io)
> The manager plugin I use is called [Lazy.nvim 💤](https://lazy.folke.io/)

> If anyone doesn't want to configure it themselves, I recommend using [Lazyvim.org 💤](https://lazyvim.org)

### [Neovim](https://neovim.io) installation section
```
# windows
scoop install neovim
choco install neovim

# macos
brew install neovim
sudo port install neovim

# linux

# archlinux
sudo pacman -S neovim
yay -S neovim

#ubuntu
sudo apt install neovim
```
### Installation [LazyVim](https://https://lazyvim.org)
```
/ macOs linux
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.config/nvim

/ windows
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```
### Install LazyVim for macOs and linux
```
git clone https://github.com/LazyVim/starter ~/.config/nvim
cd ~/.config/nvim
```
### Install Lazyvim for windows
```
git clone https://github.com/LazyVim/starter $env:LOCALAPPDATA\nvim
cd ~/AppData/Local/nvim
```
