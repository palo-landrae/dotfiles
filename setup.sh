brew install jandedobbeleer/oh-my-posh/oh-my-posh
grep -qxF 'eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/takuya.omp.json')"' ~/.bashrc || echo 'eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/takuya.omp.json')"' >> ~/.bashrc

brew install neovim

# setting alias
echo 'alias g="git"' >> ~/.bashrc
echo 'alias v="nvim"' >> ~/.bashrc
echo 'alias commit="git add * && git commit -m "' >> ~/.bashrc

# z
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z.sh
echo . ~/z.sh >> ~/.bashrc

# nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone https://github.com/palo-landrae/dotfiles-nvim ~/.config/nvim
