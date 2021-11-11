for dir in */; do
    echo "$dir"
	ConfigChanges=`git diff --name-only HEAD HEAD~1 | grep "$dir"`
	#echo "$ConfigChanges"
	#echo "$?"
	git reflog
	#git checkout HEAD@{...}
	if [[ $ConfigChanges = "" ]]
	then
		echo "No organization changes detected"
	else
		#echo "Number of elements in the array: ${#ConfigChanges[@]}"
		my_array=($(echo $ConfigChanges))
			
			for i in "${my_array[@]}"; do   # access each element of array
				echo "$i"	
				#mvn -Ptest apigee-config:apps -Dapigee.config.file=$i -Dapigee.config.options=update 				
			done
		echo "update maven command"
	fi
done