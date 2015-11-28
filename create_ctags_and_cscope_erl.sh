#!/bin/bash

E_NOFOLDER=66
CTAG_INPUT_FILES="ctags_input_files__erl.txt"

source env.sh

if [ -d "$1" ] # check parameter 1 is folder
then
  folder_name=$1
else
  echo "Folder \"$1\" does not exist."
  exit $E_NOFOLDER
fi

# find $folder_name -type f \( -name "*.hpp" -o -name "*.h" -o -name "*.sig" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" \) ! -path "*/test/*" > $CTAG_INPUT_FILES
# find $folder_name -type f \( -name "*.hpp" -o -name "*.h" -o -name "*.sig" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" \)  > $CTAG_INPUT_FILES
find $folder_name -type f \( -name "*.hrl" -o -name "*.erl" \)  > $CTAG_INPUT_FILES

echo $CTAG_INPUT_FILES
$CTAGS_EXE -L $CTAG_INPUT_FILES

echo "cscope start..."
$CSCOPE_EXE -Rbkq -i $CTAG_INPUT_FILES
echo "cscope end"
