#!/bin/bash


#checking if urls.txt exists
if [ ! -f urls.txt ]; then
	echo "File urls.txt was not found!"
	exit 1
fi

#loop over each url in urls.txt
while IFS= read -r URL; do

	# send a HEAD request using wget
	if wget --spider --method=HEAD "$url" -q; then
    	# If the URL exists, print EXISTS: URL
    		echo "EXISTS: $url"

	fi


done < urls.txt
