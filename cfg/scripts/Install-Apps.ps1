choco install -y sourcecodepro
choco install -y atom
choco install -y googlechrome
choco install git.install --params="'/NoShellIntegration /NoAutoCrlf /GitOnlyOnPath'" -y


& 'C:\Program Files\Git\bin\git.exe' clone https://github.com/blomma/mintty-dotfiles.git $HOME\.mintty
Copy-Item $HOME\.mintty\minttyrc $HOME\.minttyrc

& 'C:\Program Files\Git\bin\git.exe' clone https://github.com/blomma/git-dotfiles.git $HOME\.git
Copy-Item $HOME\.git\gitconfig.local $HOME\.gitconfig

& 'C:\Program Files\Git\bin\git.exe' clone https://github.com/blomma/atom-dotfiles.git $HOME\.atom

& 'C:\Program Files\Git\bin\git.exe' clone https://github.com/blomma/vim-dotfiles.git $HOME\.vim
cmd /c mklink $HOME\.vimrc $HOME\.vim\vimrc
