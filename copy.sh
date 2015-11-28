#!/bin/bash

declare -a FILE_IN_REPO
FILE_IN_REPO=("${FILE_IN_REPO[@]}" ".vimrc")
FILE_IN_REPO=("${FILE_IN_REPO[@]}" ".gitconfig")


declare -a FILE_IN_REPO_SHADOW
FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$HOME/.vimrc")
FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$HOME/.gitconfig")
