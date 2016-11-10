
#!/bin/bash
echo $1
for file in *.jpg; do 
	result=`exiftran -d "$file"|grep "Longitude"`
	if [ -z "$result" ]
	then
		echo "$file NO EXIF\n"
		mv "$file" nodata/ 
	fi
        #echo "$result">>lllll
done


