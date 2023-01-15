#!/bin/bash
## Rename scripts for anime Or any multiple mkv files. Don't repeatedly use it as it will gice result such as file.mk.mk.mkv

#shopt -s nullglob
for file in *.mkv .
 do

read $file 
newfile=$(echo $file | \
sed -e 's/\[[^][]*\]//g' | sed -e 's/([^()]*)//g' |  sed -e 's/ .mkv/.mkv/g' | sed -e 's/{[^]]* }//g')
echo $newfile
mv -v "$file" "$newfile"

 mv "$newfile" "${newfile/'720p'/}"
 mv "$newfile" "${newfile/'720p'/}"
 mv "$newfile" "${newfile/'1080p'/}"
 mv "$newfile" "${newfile/'720'/}"
 mv "$newfile" "${newfile/'1080'/}"
 mv "$newfile" "${newfile/'10-bit'/}"

# mv "$newfile" "${newfile/'.mk'/}"
#mv $newfile "${newfiles.mkv}"

done



# For educational purposes
#mv $file "${file/'bad words'/}"
# For meta character we should use ###[^]]*### 
# For example in aa{asasas}.txt to make it aa.txt we have to pipe it through 
# sed -e 's/the-meta-character[^]]*the-meta-character//g'
# the meta character is any brackets, parenthesis etc. () {} []  
