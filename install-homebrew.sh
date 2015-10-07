echo "\nInstaling Homebrew"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#installl homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "\nInstaling applications from homebrew"

#install homebrew-cask
brew install caskroom/cask/brew-cask

#tap hombrew cask-versions and completions
brew tap caskroom/versions
brew tap homebrew/completions

#install hombrew formulas
brew install dos2unix
brew install git
brew install mercurial
brew install wget

# brew install dockutil
brew install https://github.com/keith/homebrew/raw/ks-dockutil/Library/Formula/dockutil.rb

#install hombrew cask formulas
brew cask install utorrent
brew cask install dropbox
brew cask install google-drive

brew cask install google-chrome-canary
brew cask install firefoxdeveloperedition
brew cask install opera-developer

brew cask install google-hangouts
brew cask install spotify
brew cask install the-unarchiver
brew cask install vlc
brew cask install skype
brew cask install slack

brew cask install java

brew cask install virtualbox
brew cask install vmware-fusion
brew cask install vagrant

brew cask install atom
brew cask install intellij-idea
brew cask install pycharm

brew cask install sourcetree
brew cask install diffmerge

brew cask install pgadmin3

IS_LAPTOP=`/usr/sbin/system_profiler SPHardwareDataType | grep "Model Identifier" | grep "Book"`
if [[ "$IS_LAPTOP" != "" ]]; then
  brew cask install chronoagent
else
  brew cask install chronosync
fi

#install homebrew completions
brew install vagrant-completion
brew install bash-completion
brew install docker-completion

#install homebrew docker formulas
brew install docker
brew install docker-machine
brew install docker-compose
brew install docker-swarm

#install homebrew automation tools formulas
brew install ansible
