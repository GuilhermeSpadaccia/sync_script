#!/bin/bash

inotifywait -mr ~/local/folder/to_watch -e attrib |
    while read path action file; do
	filename=$( echo $file | cut -f2 -d"." )

	if [ "$filename" = "py" ] || \
		[ "$filename" = "cfg" ] || \
		[ "$filename" = "yml" ] || \
		[ "$filename" = "txt" ]  || \
		[ "$filename" = "json" ]; then
            echo "Updating. . ."
	    rsync -Pav -e "ssh -i ~/your/ssh/key/Key.pem" ~/local/folder/to_watch user@35.183.26.143:/folder/remote/machine/
        fi
    done
