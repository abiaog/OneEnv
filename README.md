# OneEnv
This is my personal linux enviroment, which includes shell, vim, git, ctags, cscope and firefox.
In this way, I can setup my development enviroment at any linux-like system easily.

# Install
1. Run copy-to.sh
2. Copy below into .bashrc
```bash
## OneEnv begin
source ~/.oneenv/env.sh
### ctags and cscope
alias pro='$ONEENV_BIN/create_ctags_and_cscope.sh `pwd`'
alias erlpro='$ONEENV_BIN/create_ctags_and_cscope_erl.sh `pwd`'
alias shpro='$ONEENV_BIN/create_ctags_and_cscope_sh.sh `pwd`'
## OneEnv end
```
