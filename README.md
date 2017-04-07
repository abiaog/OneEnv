# OneEnv
This is my Linux enviroment, which includes shell, vim, git, ctags, cscope and firefox.
In this way, I can setup my development enviroment at any Linux-like system easily.

* vim and plugins
* git
* bash
* plantuml
* markdown

# Install
## Comments files that you don't want to copy, for example,
	# FILE_IN_REPO=("${FILE_IN_REPO[@]}" ".gitconfig")
	# FILE_IN_REPO=("${FILE_IN_REPO[@]}" ".bashrc")
	# FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$HOME/.gitconfig")
	# FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$HOME/.bashrc")

## Run copy-to.sh

## For bash, copy below code into .bashrc
	# OneEnv begin
	source ~/.oneenv/env.sh
	# ctags and cscope
	alias pro='$ONEENV_BIN/create_ctags_and_cscope.sh `pwd`'
	alias erlpro='$ONEENV_BIN/create_ctags_and_cscope_erl.sh `pwd`'
	alias shpro='$ONEENV_BIN/create_ctags_and_cscope_sh.sh `pwd`'
	# OneEnv end

## For tcsh, copy below code into .cshrc.user
        # OneEnv begin
        source ~/.oneenv/env-tcsh.sh
        # ctags and cscope
        alias pro '$ONEENV_BIN/create_ctags_and_cscope.sh `pwd`'
        alias erlpro '$ONEENV_BIN/create_ctags_and_cscope_erl.sh `pwd`'
        alias shpro '$ONEENV_BIN/create_ctags_and_cscope_sh.sh `pwd`'
        # OneEnv end








