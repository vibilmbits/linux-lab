echo "enter the filename:"
read filename
chmod 744 "$filename"
echo "Owner can read, write, and execute; others can only read $filename."
