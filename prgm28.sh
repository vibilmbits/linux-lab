echo -n "Enter process name to count: "
read process
count=$(ps aux | grep -w "$process" | grep -v "grep" | wc -l)
echo "Number of running instances of $process: $count"

