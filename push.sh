#!/bin/bash

# Author        : Eshan Roy <eshan@snigdhaos.org>
# Author URI    : https://eshanized.github.io/

# NOTE: REPO = Your Repository Name On the Host
# NOTE: ORG =  Your ORGANIZATION NAME or USERNAME
# NOTE: HOST = GitHub, Gitlab, Bitbucket etc.  

# Repo Config
REPO=snigdhaos-grub-theme
# Host Config
HOST=https://github.com
# Destination Config
ORG=Snigdha-OS

# Set the repository URL and branch
REPO_URL="${HOST}/${ORG}/${REPO}.git"
BRANCH="master"  # or "main" depending on your repository's default branch

# Commit message
MESSAGE="@eshanized: push via script"

# Add all files, commit, and push changes
git add .
git commit -m "$MESSAGE"
git push origin $BRANCH