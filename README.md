# Dot files

Neovim requires >= 0.9.0
OS: MacOS, Windows and Linux may require additional setup and fix

# Font

Text font: Jetbrain NF
Icon font: MesloLGS NF

# Manual:

fzf - We need to manually build it, after turns on NVIM, it will have build errors:

```sh
cd ~/.config/nvim/plugged/telescope-fzf-native.nvim
rm -rf build
gmake # or make
```
