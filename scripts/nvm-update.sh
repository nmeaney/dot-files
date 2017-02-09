#!/bin/bash

# Use nvm to:
# 1. Install a new node version
# 2. Reinstall global packages
# 3. Delete the old version

# I usually run this from a bash alias:
# alias nodeup="~/development/projects/scripts-n-stuff/scripts/nvm-update.sh"

FROM_VERSION=$1
TO_VERSION=$2

# TODO: Check that nvm is installed

# Load nvm
export NVM_DIR="/Users/nmeaney/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Check for input versions
if [[ $FROM_VERSION && $TO_VERSION ]]; then

    # TODO: Check that nvm has $FROM_VERSION

    echo `nvm install $TO_VERSION --reinstall-packages-from=$FROM_VERSION`
    sleep 5
    echo `nvm use $TO_VERSION`
    sleep 5
    echo `nvm uninstall $FROM_VERSION`
else

    echo "Usage: ./nvm-update.sh <FROM_VERSION> <TO_VERSION>"
fi
