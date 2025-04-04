#!/bin/bash
## Rename scripts for anime or any multiple mkv files. Don't repeatedly use it as it may give unexpected results.
# For educational purposes
# mv "$file" "${file/'bad words'/}"
# For meta characters, we should use ###[^]]*###
# For example, in aa{asasas}.txt to make it aa.txt, we have to pipe it through 
# sed -e 's/the-meta-character[^]]*the-meta-character//g'
# The meta character is any brackets, parenthesis, etc. () {} []
# For xfce thunar Custom action Custom command will be ""exo-open --working-directory %f --launch TerminalEmulator (path to rename.sh)""
# I am not smart I had to add 3 loops for a perfect naming structures 
# First loop: Clean up brackets, extra tags, replace spaces with underscores
# Second loop: "_.mkv" ---> ".mkv"
# third loop: "_" ---> " "

for file in *.mkv
do
    newfile=$(echo "$file" | \
        sed -e 's/\[[^][]*\]//g' \
            -e 's/([^()]*)//g' \
            -e 's/{[^}]*}//g')  # Fixed curly brace matching

    newfile="${newfile#" "}"  # Remove leading space

    filename="${newfile%.*}"
    extension="${newfile##*.}"
    newfile="${filename// /_}.${extension}"  # Replace spaces with underscores

    echo "$newfile"
    mv -v "$file" "$newfile"

    # Remove common tags
    mv "$newfile" "${newfile/'720p'/}"
    mv "$newfile" "${newfile/'720p'/}"
    mv "$newfile" "${newfile/'1080p'/}"
    mv "$newfile" "${newfile/'720'/}"
    mv "$newfile" "${newfile/'1080'/}"
    mv "$newfile" "${newfile/'10-bit'/}"

    # mv "$newfile" "${newfile/'.mk'/}"
    # mv "$newfile" "${newfiles.mkv}"
done

# Second loop: Fix filenames ending with '_.mkv'
for file in *_".mkv"
do
    newfile="${file/_\.mkv/.mkv}"
    mv -v "$file" "$newfile"
done

# Third loop: Replace all underscores with spaces
for file in *.mkv
do
    newfile="${file//_/ }"
    mv -v "$file" "$newfile"
done
	
