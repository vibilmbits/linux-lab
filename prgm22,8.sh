echo "Enter the filename:"
read filename
chmod 644 "$filename"
echo "Owner can read/write,others can only read $filename."
