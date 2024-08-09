  #!/bin/bash 
  # Installation script
  # Applications
  cd #
  sudo apt install firefox-esr git vim tmux keepassxc ledger hledger hledger-ui hledger-web curl recutils mpv cmus unzip newsboat
  # Optional
  # sudo apt install cwm picom feh xinput xscreensaver emacs nextcloud-desktop 
  # vim plugins
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  # tmux plugins
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  # fzf
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
  # configs
  git clone https://github.com/nicksiv/dot
  ln -s ~/dot/.vimrc ~/.vimrc
  ln -s ~/dot/.tmux.conf ~/.tmux.conf
  # bash
  # echo 'source ~/.bash_aliases >> ~/.bashrc'
  # unzip notes
  # unzip ~/org/data/sys/notes-archive.zip -d ~/Documents/notes-archive
  # git
  git config --global user.name "nyk0si"
  git config --global user.email "nicksiv@disroot.org"


