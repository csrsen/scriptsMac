# Python environment setup script
# you can just drag this file into a Terminal.app window to execute

#!/bin/bash

# install XCode developer tools first (will generate GUI popups)
xcode-select --install

# install Homebrew
BREW_URI=https://raw.githubusercontent.com/Homebrew/install/master/install
ruby -e "$(curl -fsSL ${BREW_URI})"

# add Homebrew to PATH
echo "export PATH=/usr/local/bin:/usr/local/sbin:$PATH" >> ~/.profile

# install Python 3
brew install python3

# upgrade pip and setuptools
pip3 install --upgrade pip setuptools

# install PEP 8
pip3 install pep8 autopep8

# install MSSQL command line tools
brew tap microsoft/mssql-release
brew update
ACCEPT_EULA=y brew install --no-sandbox msodbcsql mssql-tools

echo "Script $(basename \"$0\") complete."
