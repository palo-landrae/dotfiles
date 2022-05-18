# zsh
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# setting alias
echo 'alias g="git"' >> ~/.zshrc
echo 'alias v="nvim"' >> ~/.zshrc
echo 'alias commit="git add * && git commit -m "' >> ~/.zshrc
echo 'alias cls="clear"' >> ~/.zshrc

# z
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z.sh
echo . ~/z.sh >> ~/.zshrc

# nvim
brew install neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone https://github.com/palo-landrae/dotfiles-nvim ~/.config/nvim
