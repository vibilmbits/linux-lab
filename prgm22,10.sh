echo "Enter the filename:"
read filename
chmod 750 "$filename"
echo "Owner has full permission;group can read and execute $filename."
