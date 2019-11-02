Show Full path(command)
  On:
  defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES;killall Finder
  Off:
  defaults write com.apple.finder _FXShowPosixPathInTitle -bool NO;killall Finder
