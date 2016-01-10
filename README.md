# OneEnv
This is my personal linux enviroment, which includes shell, vim, git, ctags, cscope and firefox.
In this way, I can setup my development enviroment at any linux-like system easily.

# Install
## Comment out files you don't want to copy, for example,
```bash
# FILE_IN_REPO=("${FILE_IN_REPO[@]}" ".gitconfig")
# FILE_IN_REPO=("${FILE_IN_REPO[@]}" ".bashrc")
...
# FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$HOME/.gitconfig")
# FILE_IN_REPO_SHADOW=("${FILE_IN_REPO_SHADOW[@]}" "$HOME/.bashrc")
```
## Run copy-to.sh
## Copy below into .bashrc
```bash
## OneEnv begin
source ~/.oneenv/env.sh
### ctags and cscope
alias pro='$ONEENV_BIN/create_ctags_and_cscope.sh `pwd`'
alias erlpro='$ONEENV_BIN/create_ctags_and_cscope_erl.sh `pwd`'
alias shpro='$ONEENV_BIN/create_ctags_and_cscope_sh.sh `pwd`'
## OneEnv end
```
