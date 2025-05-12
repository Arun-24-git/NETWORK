
echo " Directory of $(pwd)"

ls -lnA --time-style='+%m/%d/%Y %I:%M %p' | tail -n +2 | while read -r perm links owner group size date time filename; do
    firstchar=$(echo "$perm" | cut -c1)

    if [ "$firstchar" = "d" ]; then
        printf "%s %s    <DIR>       %s\n" "$date" "$time" "$filename"
    elif [ "$firstchar" = "-" ]; then
        printf "%s %s %12d %s\n" "$date" "$time" "$size" "$filename"
    fi
done
