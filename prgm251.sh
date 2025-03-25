#!/bin/bash

while true; do
    clear
    echo "Movie Management System"
    echo "1. Search for a movie name"
    echo "2. Count occurrences of a movie name"
    echo "3. Find movies starting or ending with a specific word"
    echo "4. Display only the first match"
    echo "5. Count total movies in the file"
    echo "6. Replace a movie name in the file"
    echo "7. Exit"
    echo -n "Choose an option: "
    read option

case $option in
1)

echo "Enter the movie name to search for:"
read movie
grep -i "$movie" movie_list.txt
;;
2)

echo "Enter the movie name to count occurrences:"
read movie
grep -i -c "$movie" movie_list.txt
;;
3)

echo "Enter 'start' to find movies starting with a word, or 'end' to find movies ending with a word:"
read choice
echo "Enter the word to search for:"
read word

if [ "$choice" == "start" ]; then
grep -i "^$word" movie_list.txt
elif [ "$choice" == "end" ]; then
grep -i "$word$" movie_list.txt
else
echo "Invalid choice. Please enter 'start' or 'end'."
fi
;;
4)

echo "Enter the movie name to display the first match:"
read movie
grep -i "$movie" movie_list.txt | head -n 1
;;
5)

total=$(wc -w < movie_list.txt)
echo "Total number of movies: $total"
;;
6)

echo "Enter the movie name to replace:"
read old_movie
echo "Enter the new movie name:"
read new_movie
sed -i "s/\b$old_movie\b/$new_movie/gI" movie_list.txt
echo "Movie name replaced successfully."
;;
7)

exit 0
;;
*)
echo "Invalid option, please try again."
;;
esac

echo "Press Enter to continue..."
read
done

