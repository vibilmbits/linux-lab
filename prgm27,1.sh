echo -n "Enter process name or pid (e.g., firefox, chrome, or 1234): "
read process

if [ -z "$process" ]; then
    echo "No input provided. Exiting."
    exit 1
fi


if [[ "$process" =~ ^[0-9]+$ ]]; then
    ps aux | awk -v pid="$process" '$2 == pid {print $0}' || echo "No such process found: PID $process"
else
    ps aux | grep -w "$process" | grep -v "grep" || echo "No such process found: $process"
fi

