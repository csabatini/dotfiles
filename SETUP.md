# Environment setup steps
Tested on Ubuntu, should be similar on other distros

## Download config files from github
    sudo apt-get install git
    cd ~/ && git clone https://github.com/csabatini/dotfiles
    cp ~/dotfiles/.* ~/

## Install and customize terminal
    sudo apt-get install xfce4-terminal
    mkdir -p ~/.config/xfce4/terminal/
    cp ~/.terminalrc/ ~/.config/xfce4/terminal/terminalrc

## Install (latest) python
    sudo add-apt-repository ppa:fkrull/deadsnakes
    sudo apt-get update
    sudo apt-get install python3.6 python3.6-venv python3.6-dev

# Compile VIM with python support
    sudo apt-get remove --purge vim vim-runtime vim-gnome vim-tiny vim-gui-common
    sudo apt-get install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev libncurses5-dev libatk1.0-dev libx11-dev libxpm-dev libxt-dev
    cd ~/ && git clone https://github.com/vim/vim && cd vim 
    cd src && make distclean && cd ..

    ./configure \
    --enable-perlinterp \
    --enable-python3interp \
    --enable-rubyinterp \
    --enable-cscope \
    --enable-gui=auto \
    --enable-gtk2-check \
    --enable-gnome-check \
    --with-features=big \
    --enable-multibyte \
    --with-x \
    --with-compiledby="csabatini" \
    --with-python3-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu

    make && sudo make install





