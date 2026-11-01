#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Show Desktop
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Desktop Utilities

# Documentation:
# @raycast.author Vladimir "allejo" Jimenez
# @raycast.authorURL https://allejo.io/

defaults write com.apple.finder CreateDesktop -bool true
killall Finder
