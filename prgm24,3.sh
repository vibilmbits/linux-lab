echo "Enter the filename:"
read filename

echo "Enter the word to be replace:"
read oldword

echo "Enter the new word:"
read newword
sed -i "s/$oldword/$newword/g" "$filename"
