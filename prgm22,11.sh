echo "Enter the filename to reset permission:"
read filename
chmod 644 "$filename"
echo "Permissions reset to default: rw-r--r--"
