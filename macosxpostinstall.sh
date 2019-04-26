echo 'install homebrew'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo 'install userfull tools'
brew install zsh
chsh -s /bin/zsh
brew install git
brew install vim
brew install wget
brew install ack
brew install hugo

brew cask install iterm2
brew cask install slack
brew cask install spectacle
brew cask install firefox
brew cask install thunderbird
brew cask install zoomus
brew cask install dropbox
brew cask install vlc
brew cask install vscodium

# Oh my ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 'dotfiles'
git clone git@github.com:angezanetti/dotfiles.git
cp dotfiles/.vimrc ~

echo 'you should also DL flu.x!'
