
index=-1
echo "Enter element you want to search"
read elementToFind
echo "Enter array elements"
read -a arr

for ((i=0 ; i< ${#arr[@]};i++));
do 
	#echo "$i"
    if (( elementToFind == ${arr[i]} )); then
        index=$i
        break
    else 
        continue
    fi
done


if (( index == -1)); then
    echo "Element not found"
else 
    echo "Element found at $index"
fi