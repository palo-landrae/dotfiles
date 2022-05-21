# zsh
sudo chsh -s $(which zsh)
sh -c "$(wget -O - https://raw.githubusercontent.com/palo-landrae/dotfiles/main/zsh/oh-my-zsh-modded.install.sh)"

# setting alias
echo 'alias g="git"' >> ~/.zshrc
echo 'alias v="nvim"' >> ~/.zshrc
echo 'alias commit="git add * && git commit -m "' >> ~/.zshrc
echo 'alias cls="clear"' >> ~/.zshrc

# z
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z.sh
echo . ~/z.sh >> ~/.zshrc

# nvim
#brew install neovim
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb -O ~/nvim-linux64.deb
sudo apt install ~/nvim-linux64.deb

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# nvim config
git clone https://github.com/palo-landrae/dotfiles-nvim ~/.config/nvim
nvim --headless -i NONE -c "PlugInstall" -c "qa"
echo 'Installing coc-nvim extensions...'
nvim --headless -i NONE -c "CocInstall -sync coc-json coc-prettier coc-pyright coc-tsserver coc-html coc-docker coc-prisma" -c "qa"
echo 'Installation done!'
# cd to root
cd $GITPOD_REPO_ROOT

exec zsh -l
