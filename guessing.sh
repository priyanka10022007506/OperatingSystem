count_files() {
    echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

file_count=$(count_files)

while true
do
    read -p "Enter your guess: " guess

    if [[ $guess -lt $file_count ]]
    then
        echo "Too low. Try again."
    elif [[ $guess -gt $file_count ]]
    then
        echo "Too high. Try again."
    else
        echo "Congratulations! You guessed the correct number of files."
        break
    fi
done
