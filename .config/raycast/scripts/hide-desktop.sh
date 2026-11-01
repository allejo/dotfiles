#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Hide Desktop
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Desktop Utils

# Documentation:
# @raycast.author Vladimir "allejo" Jimenez
# @raycast.authorURL https://allejo.io/

defaults write com.apple.finder CreateDesktop -bool false
killall Finder
