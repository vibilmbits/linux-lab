echo "Enter the filename to grant full permission:"
read filename
chmod 777 "$filename"
echo "Full permission (rwcrwxrwx) granted to everyone for $filename."
