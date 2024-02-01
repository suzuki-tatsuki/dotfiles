cd
find . -name '.DS_Store' -type f -ls -delete
defaults write com.apple.desktopservices DSDontWriteNetworkStores True
killall Finder
