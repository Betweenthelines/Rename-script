#!/bin/bash
## Rename scripts for anime Or any multiple mkv files. Don't repeatedly use it as it will gice result such as file.mk.mk.mkv
## XFCE to use it in any folder of your liking 
## copy this file in your (DIRECTORY)in thunar go to "Edit>Configure custom Actions" and select Add option or +
## type in custom command exo-open --working-directory %f --launch TerminalEmulator /(DIRECORY)rename.sh


shopt -s nullglob
for file in *.mkv .
 do

newfile=$(echo $file | \
sed -e 's/\[[^][]*\]//g' | sed -e 's/([^()]*)//g' | sed -e 's/.$/.mkv/g' | sed -e 's/{[^]]* }//g')
echo $newfile
mv -v "$file" "$newfile" && ls

done

# For educational purposes
# For meta character we should use ###[^]]*### 
# For example in aa{asasas}.txt to make it aa.txt we have to pipe it through 
# sed -e 's/the-meta-character[^]]*the-meta-character//g'
# the meta character is any brackets, parenthesis etc. () {} []  
