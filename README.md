# Rename-script
my personal noob renaming script for my overloaded Anime collection

It makes any mkv file(s) in any folder which have lot of parenthesis or brackets into more tolerable naming sense.
For example 

`12file(99009909090){89uu23123}[123091283021983]11.mkv will be converted into 12file11.mkv`

This scripts removes any text inside parenthesis or brackets. Supported characters are {} [] (). YOU can add way more HOW?. Its written inside script.

I am just updating this script in 2025 as it does 
1. remove special character
2. a loop to rename all files with "_.mkv" to ".mkv"
3. another loop to replace all "_" with " ".

This method makes all my anime collection compatabile to all types of storages and hard disks.

For xfce thunar Custom action Custom command will be 
`exo-open --working-directory %f --launch TerminalEmulator (path to rename.sh)`

I use Arch Linux btw
