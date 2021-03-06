#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $CURRENT_DIR/env.sh # for bash
# source $CURRENT_DIR/env-tcsh.tcsh # for tcsh

echo $ONEENV_BIN

if [ ! -d "$ONEENV_BIN" ]; then
	mkdir $ONEENV_BIN
fi

declare -a FILE_IN_REPO
FILE_IN_REPO=("${FILE_IN_REPO[@]}" "$(pwd)/.vimrc")
FILE_IN_REPO=("${FILE_IN_REPO[@]}" ".gitconfig")
# FILE_IN_REPO=("${FILE_IN_REPO[@]}" ".bashrc")
FILE_IN_REPO=("${FILE_IN_REPO[@]}" "env.sh")
FILE_IN_REPO=("${FILE_IN_REPO[@]}" "non-plugin-stuff.vim")
FILE_IN_REPO=("${FILE_IN_REPO[@]}" "create_ctags_and_cscope.sh")
FILE_IN_REPO=("${FILE_IN_REPO[@]}" "create_ctags_and_cscope_erl.sh")
FILE_IN_REPO=("${FILE_IN_REPO[@]}" "create_ctags_and_cscope_sh.sh")

declare -a FILE_IN_REPO_SHADOW
FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$HOME/.vimrc")
FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$HOME/.gitconfig")
# FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$HOME/.bashrc")
FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$ONEENV_BIN/env.sh")
FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$ONEENV_BIN/non-plugin-stuff.vim")
FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$ONEENV_BIN/create_ctags_and_cscope.sh")
FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$ONEENV_BIN/create_ctags_and_cscope_erl.sh")
FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$ONEENV_BIN/create_ctags_and_cscope_sh.sh")
