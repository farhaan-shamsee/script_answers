#This takes input file path amd output file path as argument.

if [ -f "$1" -a -f "$2" ] #checks if file exist or not
then
	if [ -d "$3" ]  #checks if output directory is present or not
	then
		#Write the file name into text file to be used in the ffmpeg command
		echo "file '$1'" > file.txt 
		echo "file '$2'" >> file.txt
		ffmpeg -f concat -safe 0 -i file.txt -c copy $3/output.mp4 -y
	else
	#this will run if output directory does not exist. It will create one and then perform merging.
		echo output location does not exist. Creating new.
		mkdir ./$3
		echo "file '$1'" > file.txt
		echo "file '$2'" >> file.txt
		ffmpeg -f concat -safe 0 -i file.txt -c copy $3/output.mp4 -y 
	fi		
	
else
	echo please enter correct path of the files	
fi
