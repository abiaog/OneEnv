#!/bin/bash

E_NOFOLDER=66
CTAG_INPUT_FILES="ctags_input_files.txt"

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $CURRENT_DIR/env.sh

if [ -d "$1" ] # check parameter 1 is folder
then
  folder_name=$1
else
  echo "Folder \"$1\" does not exist."
  exit $E_NOFOLDER
fi

find $folder_name -type f \( -name "*.sh"  \)  > $CTAG_INPUT_FILES

echo $CTAG_INPUT_FILES
$CTAGS_EXE -L $CTAG_INPUT_FILES

echo "cscope start..."
$CSCOPE_EXE -Rbkq -i $CTAG_INPUT_FILES
echo "cscope end"
