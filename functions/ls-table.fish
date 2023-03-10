function ls-table
    set output (ls -al | sed 's/ \+/ /g' | awk '{printf "%-10s %-3s %-10s %-10s %-6s %-12s %-20s\n", $1, $2, $3, $4, $5, $6, $7}')
    echo "Permissions User Group Size Date Modified Name"
    echo "$output"
end