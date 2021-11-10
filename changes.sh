for dir in */; do
    echo "$dir"
	ConfigChanges=`git diff --name-only HEAD HEAD~1 | grep "$dir"`
	echo "$ConfigChanges"
	if [[ $? -eq 0 ]]
	then
		export EdgeConfigOptions="none"
		echo "none"
	else
		export EdgeConfigOptions="update"
		echo "update maven command"
		#mvn clean install -Dusername=${apigeeUsername} -Dpassword=${apigeePassword} -Dapigee.config.options=update -P prod -Dorg=Test-eval
	fi
done