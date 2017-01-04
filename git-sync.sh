for folder in `\find . -maxdepth 1 -type d`; do
	if [ -e "$folder/.git" ]; then
		cd $folder
		git pull origin
		cd ../
	fi
done