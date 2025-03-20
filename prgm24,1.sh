echo "Enter the filename:"
read filename
echo "Enter the bword to search:"
read word
grep -m 1 "$word" "$filename" 
