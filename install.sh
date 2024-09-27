apt update && apt upgrade -y
apt install -y git

git clone https://github.com/alikberg123/python.git

apt install -y python3
pip install --upgrade pip
pip install -r python/requirements.txt
apt insall -y neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cp nvim/init.vim ~/.config/nvim/
nvim +PlugInstall +qall
apt install fastfetch
apt autoremove && apt autoclean -y