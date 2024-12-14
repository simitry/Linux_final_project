
function file_count {
	echo $( ls -1 | wc -l )
}

echo "Hello, guess how many files are in this folder"

while true
do
	read guess

	if [[ ! $guess =~ ^[0-9]+$ ]]
	then
		echo "Please enter a number"
		continue
	fi

	if [[ $guess -gt $(file_count) ]]
	then
		echo "Wrong!! try a lower value"

	elif [[ $(file_count) -gt $guess ]]
	then
		echo "Wrong!! try a higher value"

	else
		echo "Congratulation, that's right. This folder contain $(file_count) files"
		break
	fi
done
