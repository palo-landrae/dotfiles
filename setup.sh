log_file=~/install_progress_log.txt

brew install jandedobbeleer/oh-my-posh/oh-my-posh
grep -qxF 'eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/takuya.omp.json')"' ~/.bashrc || echo 'eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/takuya.omp.json')"' >> ~/.bashrc

brew install neovim
