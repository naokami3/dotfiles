git clone https://github.com/tomislav/osx-terminal.app-colors-solarized

setting vimrc

mkdir ~/.vim

cd ~/.vim

mkdir colors

git clone https://github.com/tomasr/molokai

cp molokai/colors/molokai.vim ~/.vim/colors/

# install neovim with homebrew
brew install neovim
mkdir -p ~/.config/nvim/
mkdir -p ~/.config/nvim/colors
cp molokai/colors/molokai.vim ~/.config/nvim/colors
cp .vimrc ~/.config/nvim/init.vim

# setting vim-plug
mkdir -p ~/.local/share/nvim/site/autoload/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
