# env
brew install --cask 'homebrew/cask-versions/adoptopenjdk8'

# devs
brew install 'iterm2'
brew install 'visual-studio-code'
# brew install 'sourcetree'
brew install 'fork'
#brew install 'sublime-text'
# brew install 'sublime-merge'
# brew install 'postman'
# brew install 'jetbrains-toolbox'
brew install 'db-browser-for-sqlite'

# productivity
#brew install 'alfred'
brew install 'flux'
# brew install 'raycast'
# brew install 'firefox'
#brew install 'popclip'
brew install 'hammerspoon'
brew install 'karabiner-elements'
#brew install '1password'
# brew install 'simplenote'
# brew install 'the-unarchiver'
# brew install 'openinterminal'
# brew install 'raycast'

# basics
# brew install 'drawio'

# fonts
brew install 'font-jetbrains-mono'

# theme
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
