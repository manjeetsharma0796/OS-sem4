
arr=("sita" "mita" "gita")
echo "Array elements are"

for element in "${arr[@]}"; do
    echo $element
done
echo "Enter element you want to search"

read find

index=-1
for (( i=0; i<${#arr[@]}; i++ )); do
    if (( "$find" == "${arr[i]}" )); then
        index=$i
        break
    else 
        continue
    fi
done

if (( index == -1)); then
    echo "Elment not found"
else
    echo "Elment found at $index"
fi