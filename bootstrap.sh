##install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Homebrew/bundle
#grab the brew dependencies
brew bundle

#Install oh my zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
#change your default shell to zsh
chsh -s /bin/zsh

#Install powerline fonts
# clone
git clone https://github.com/powerline/fonts.git
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

#install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

cp ~/.zshrc ~/.zshrc.orig
cp ./.zshrc ~/.zshrc

osascript -e "tell application \"Iterm\" to activate"