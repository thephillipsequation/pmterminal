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
cp ./zshrc ~/.zshrc

osascript <<END
if isAppRunning("iTerm") then
	tell application "iTerm"
		set myterm to (make new terminal)
		tell myterm
			set mysession to (make new session at the end of sessions)
			tell mysession
				exec command "/bin/bash -l"
			end tell
		end tell
		activate
	end tell
else
	activate application "iTerm"
end if

(* Code from Dweller on
 *  http://codesnippets.joyent.com/posts/show/1124
 *)
on isAppRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end isAppRunning
END