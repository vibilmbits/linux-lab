echo "Enter the filename:"
read filename
if [ -e "$filename" ]; then
echo "File exits."
if [ -r "$filename" ]; then
echo "File is readable."
else
echo "File is not readable."
fi

if [ -w "$filename" ]; then
echo "File is writable."
else
echo "File is not writable."
fi
if [ -r "$filename" ] && [ -w "$filename" ]; then
echo "File is both readable and writable."
else
echo "File is not both readable and writable."
fi
else
echo "File does not exist. "
fi
